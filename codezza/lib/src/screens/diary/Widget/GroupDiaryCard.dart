import 'package:flutter/material.dart';

// 그룹 일기 카드
class GroupDiaryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 14, right: 14, bottom: 16),
      child: Card(
        child: Container(
          width: 240,
          height: 240,
          color: Colors.blue[300],
        ),
      ),
    );
  }
}
