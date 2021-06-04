import 'package:codezza/src/utils/ProfileCard.dart';
import 'package:flutter/material.dart';
// 개인일기 List
class MyDiaryList extends StatelessWidget {
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
