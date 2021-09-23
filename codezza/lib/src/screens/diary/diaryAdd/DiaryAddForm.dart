import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';

import '/src/models/entity.dart';
import '/src/widgets/style.dart';

typedef OnDelete();

// 사진 추가 폼
class DiaryAddForm extends StatefulWidget {
  final Diary? diary;
  final state = _DiaryAddFormState();
  final OnDelete? onDelete;

  DiaryAddForm({
    Key? key,
    this.diary,
    this.onDelete,
  }) : super(key: key);

  @override
  _DiaryAddFormState createState() => state;

  bool isValid() => state.validate();
}

class _DiaryAddFormState extends State<DiaryAddForm> {
  final form = GlobalKey<FormState>();
  final _text = TextEditingController(); // 일기 내용

  /* 이미지 업로드 */
  List<XFile>? _imageFileList;

  set imageFile(XFile? value) {
    _imageFileList = (value == null) ? null : [value];
  }

  var pickImageError;
  String? retrieveDataError;
  final ImagePicker _picker = ImagePicker();

  /* 이미지 업로드 */

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
            _appbar(),
            _addCard(),
            _textForm(),
          ],
        ),
      ),
    );
  }

  // Card: appbar
  Widget _appbar() {
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

  // Card: add Card
  Widget _addCard() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
      ),
      child: DottedBorder(
        dashPattern: [8, 4],
        strokeWidth: 2,
        child: (_imageFileList == null
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
                    print('사진 추가 클릭!');
                    try {
                      _onImageAdd();
                    } catch (e) {
                      setState(() {
                        pickImageError = e;
                      });
                    }
                  },
                ),
              )
            : /*Container(
                // 이미지 추가했을 때
                width: 400,
                height: 200,
                color: kWhite4,
                child: Semantics(
                  label: 'diaryImage',
                  child: kIsWeb
                      ? Image.network(_imageFileList![0].path)
                      : Image.file(File(_imageFileList![0].path)),
                  onTap: () async {
                    print('사진 추가 클릭!');
                    try {
                      _onImageAdd();
                    } catch (e) {
                      setState(() {
                        _pickImageError = e;
                      });
                    }
                  },
                ),
              )),*/
            Container(
                // 이미지 추가했을 때
                width: 400,
                height: 200,
                color: kWhite4,
                child: InkWell(
                  child: (kIsWeb
                      ? Image.network(_imageFileList![0].path)
                      : Image.file(File(_imageFileList![0].path))),
                  onTap: () async {
                    print('사진 변경 클릭!');
                    try {
                      _onImageAdd();
                    } catch (e) {
                      setState(() {
                        pickImageError = e;
                      });
                    }
                  },
                ),
              )),
      ),
    );
  }

  // Card: text Form Field
  Widget _textForm() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 16,
      ),
      child: TextFormField(
        controller: _text,
        decoration: InputDecoration(
          hintText: '내용을 입력해 주세요.',
        ),
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

  void _onImageAdd() async {
    try {
      final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      setState(() {
        imageFile = pickedFile!;
      });
    } catch (e) {
      setState(() {
        pickImageError = e;
      });
    }
  }

  Text? _getRetrieveErrorWidget() {
    if (retrieveDataError != null) {
      final Text result = Text(retrieveDataError!);
      retrieveDataError = null;
      return result;
    }
    return null;
  }
}
