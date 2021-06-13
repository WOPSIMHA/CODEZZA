import '/src/sample/sampledb.dart';
import '/src/screens/diary/Widget/MyDiaryCard.dart';

import 'package:flutter/material.dart';

// 개인일기 List
class MyDiaryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: user2Dairy.length,
        itemBuilder: (context, index) => MyDiaryCard(diary: user2Dairy[index]),
      ),
    );
  }
}
