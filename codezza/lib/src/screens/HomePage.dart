import 'package:codezza/src/screens/diary/my/MyDiaryListPage.dart';
import 'package:codezza/src/utils/ProfileCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16),
            ProfileCard(),
            SizedBox(height: 16),
            Container(height: 56, width: 324, color: Colors.green,),
            SizedBox(height: 16),
            MyDiaryList(),
          ],
        ),
      ),
    );
  }
}
