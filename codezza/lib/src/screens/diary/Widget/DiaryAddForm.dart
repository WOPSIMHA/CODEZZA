import '/src/models/diary/diary.dart';
import '/src/widgets/style.dart';
import 'package:flutter/material.dart';

typedef OnDelete();

// 사진 추가 폼
class DiaryAddForm extends StatefulWidget {
  final Diary diary;
  final state = _DiaryAddFormState();
  final OnDelete onDelete;

  DiaryAddForm({
    Key? key,
    required this.diary,
    required this.onDelete,
  }) : super(key: key);

  @override
  _DiaryAddFormState createState() => state;
}

class _DiaryAddFormState extends State<DiaryAddForm> {
  final form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppBar(
              title: FontMedium(
                title: '사진',
                size: 16,
                color: Colors.black,
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.close),
                ),
              ],
            ),
            TextFormField(),
          ],
        ),
      ),
    );
  }
}
