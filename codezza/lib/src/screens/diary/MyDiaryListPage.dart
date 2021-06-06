import '/src/screens/diary/Widget/MyDiaryCard.dart';

import 'package:flutter/material.dart';

// 개인일기 List
class MyDiaryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          MyDiaryCard(),
          MyDiaryCard(),
        ],
      ),
    );
  }
}
