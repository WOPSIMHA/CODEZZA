import 'dart:async';
import 'dart:io';

import '/src/models/diary/diary.dart';
import '/src/widgets/style.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';

typedef OnDelete();

// 사진 추가 폼
class DiaryAddForm extends StatefulWidget {
  final Diary? diary;
  final state = _DiaryAddFormState();
  final OnDelete? onDelete;
  final String? title;
  final int? index;

  DiaryAddForm({
    Key? key,
    this.diary,
    this.onDelete,
    this.title,
    this.index,
  }) : super(key: key);

  @override
  _DiaryAddFormState createState() => state;

  bool isValid() => state.validate();
}

class _DiaryAddFormState extends State<DiaryAddForm> {
  final form = GlobalKey<FormState>();
  final _text = TextEditingController(); // 일기 내용

  /** 이미지 업로드 */
  List<PickedFile>? _imageFileList;
  set _imageFile(PickedFile? value) {
    if (value == null) {
      return;
    } else {
      _imageFileList?.add(value);
    }
    // _imageFileList = value == null ? null : [value];
  }

  dynamic _pickImageError;
  String? _retrieveDataError;
  final ImagePicker _picker = ImagePicker();
  /** 이미지 업로드 */

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
        title: widget.title,
        size: 20,
        color: Colors.black,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: widget.onDelete,
          icon: IconList.Close,
        ),
      ],
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
        child: Container(
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
                  _pickImageError = e;
                });
              }
            },
          ),
        ),
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
          hintText: '내용을 입력해주세요.',
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
      final pickedFile = await _picker.getImage(
        source: ImageSource.gallery,
      );
      setState(() {
        _imageFile = pickedFile;
      });
    } catch (e) {
      setState(() {
        _pickImageError = e;
      });
    }
  }

  ListView _onImageAdd2(PickedFile) {
    print('===================');
    return ListView.builder(
      key: UniqueKey(),
      itemBuilder: (context, index) {
        return Semantics(
          label: 'image_picker_example_picked_image',
          child: kIsWeb
              ? Image.network(PickedFile.path)
              : Image.file(File(PickedFile.path)),
        );
      },
      // itemCount: _imageFileList!.length,
    );
  }
}
