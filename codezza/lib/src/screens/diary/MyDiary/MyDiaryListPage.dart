import '/src/sample/sampledb.dart';
import 'package:flutter/material.dart';

import 'MyDiaryCard.dart';

// 개인일기 List
class MyDiaryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: TestData.user2Dairy.length,
        itemBuilder: (context, index) => MyDiaryCard(diary: TestData.user2Dairy[index]),
      ),
    );
  }
}
