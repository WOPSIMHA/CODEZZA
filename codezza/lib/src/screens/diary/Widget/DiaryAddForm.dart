import '/src/models/diary/diary.dart';
import '/src/widgets/style.dart';
import 'package:flutter/material.dart';

typedef OnDelete();

// 사진 추가 폼
class DiaryAddForm extends StatefulWidget {
  final Diary? diary;
  final state = _DiaryAddFormState();
  final OnDelete? onDelete;
  final String? title;

  DiaryAddForm({
    Key? key,
    this.diary,
    this.onDelete,
    this.title,
  }) : super(key: key);

  @override
  _DiaryAddFormState createState() => state;

  bool isValid() => state.validate();
}

class _DiaryAddFormState extends State<DiaryAddForm> {
  final form = GlobalKey<FormState>();

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
      child: Container(
        width: 400,
        height: 200,
        color: kWhite3,
        child: InkWell(
          child: Center(child: IconList.Add),
          onTap: () {

          },
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
}
