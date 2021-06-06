import '/src/utils/ProfileCard.dart';
import 'package:flutter/material.dart';
// 그룹 일기 List
class GroupDiaryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          ProfileCard(),
          SizedBox(height: 16),
          ProfileCard(),
          SizedBox(height: 16),
          ProfileCard(),
          SizedBox(height: 16),
          ProfileCard(),
          SizedBox(height: 16),
          ProfileCard(),
          SizedBox(height: 16),
          ProfileCard(),
          SizedBox(height: 16),
          ProfileCard(),
          SizedBox(height: 16),
          ProfileCard(),
        ],
      ),
    );
  }
}
