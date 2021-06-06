// import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

// 일기 작성 페이지
class DiaryAdd extends StatefulWidget {
  @override
  _DiaryAddState createState() => _DiaryAddState();
}

class _DiaryAddState extends State<DiaryAdd> {
  List<Widget> _children = [];
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}

// 사진 추가 폼
class DiaryAddForm extends StatefulWidget {
  @override
  _DiaryAddFormState createState() => _DiaryAddFormState();
}

class _DiaryAddFormState extends State<DiaryAddForm> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}