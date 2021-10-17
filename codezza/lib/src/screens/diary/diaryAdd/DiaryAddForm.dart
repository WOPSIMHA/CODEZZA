import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';

import 'package:codezza/src/models/entity.dart';
import 'package:codezza/src/widgets/style.dart';

typedef void SetImgFile(PickedFile img);

// 사진 추가 폼
class DiaryAddForm extends StatefulWidget {
  final state = _DiaryAddFormState();
  final Diary? diary;
  final TextEditingController? textController;
  SetImgFile? setImgFile; // DiaryAddPage image file setter

  DiaryAddForm({
    Key? key,
    this.diary,
    this.textController,
    this.setImgFile,
  }) : super(key: key);

  @override
  _DiaryAddFormState createState() => state;

  bool isValid() => state.validate();
}

class _DiaryAddFormState extends State<DiaryAddForm> {
  final form = GlobalKey<FormState>();

  final ImagePicker picker = ImagePicker();
  List<PickedFile>? imageFile;
  set setImage(PickedFile value) {
    if (value == null) {
      return;
    } else {
      imageFile = [value];
      widget.setImgFile!(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return buildBody();
  }

  // body
  Widget buildBody() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            appbar(),
            diaryPhoto(),
            Container(
              height: 5,
            ),
            diaryText(),
          ],
        ),
      ),
    );
  }

  // Card: appbar
  Widget appbar() {
    return AppBar(
      backgroundColor: kMainColor,
      title: FontMedium(
        title: '',
        size: 20,
        color: Colors.black,
      ),
      centerTitle: true,
      automaticallyImplyLeading: false,
    );
  }

  Widget diaryPhoto() {
    // Card: diary image
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
      ),
      child: DottedBorder(
        dashPattern: [8, 4],
        strokeWidth: 2,
        child: (imageFile == null
            ? Container(
                // 이미지 없을 때
                width: 400,
                height: 200,
                color: kWhite4,
                child: InkWell(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconList.Add,
                      Container(height: 10),
                      FontMedium(title: '사진 추가', size: 24, color: kGray2),
                    ],
                  ),
                  onTap: () async {
                    try {
                      imageUpload();
                    } catch (e) {}
                  },
                ),
              )
            : Container(
                // 이미지 추가했을 때
                width: 400,
                height: 200,
                color: kWhite4,
                child: InkWell(
                  child: (kIsWeb
                      ? Image.network(imageFile![0].path)
                      : Image.file(File(imageFile![0].path))),
                  onTap: () async {
                    try {
                      imageUpload();
                    } catch (e) {}
                  },
                ))),
      ),
    );
  }

  Widget diaryText() {
    // 일기 내용
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 16,
      ),
      child: DottedBorder(
        dashPattern: [8, 4],
        strokeWidth: 2,
        color: Colors.grey,
        child: TextFormField(
            controller: widget.textController,
            maxLines: 10,
            decoration: InputDecoration(
              hintText: ' 일기를 작성해 주세요!',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontFamily: 'GmarketSansMedium',
              ),
            ),
            onChanged: (text) {
              setState(() {});
            }),
      ),
    );
  }

  bool validate() {
    var valid = form.currentState!.validate();
    if (valid) {
      form.currentState!.save();
    }
    return valid;
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void imageUpload() async {
    try {
      final pickedFile = await picker.getImage(
        source: ImageSource.gallery,
      );
      setState(() {
        setImage = pickedFile!;
      });
    } catch (e) {}
  }
}
