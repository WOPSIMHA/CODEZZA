import '/src/screens/diary/Widget/GroupDiaryCard.dart';

import 'package:flutter/material.dart';

// 그룹 일기 List
class GroupDiaryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          GroupDiaryCard(),
          GroupDiaryCard(),
          GroupDiaryCard(),
          GroupDiaryCard(),
        ],
      ),
    );
  }
}
