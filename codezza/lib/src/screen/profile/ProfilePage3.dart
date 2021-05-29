import 'package:codezza/src/screen/component/SignUpPrimaryButton.dart';
import 'package:codezza/src/screen/page/HomeMain.dart';
import 'package:codezza/src/style/font.dart';
import 'package:flutter/material.dart';

class ProfilePage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 200, left: 44, right: 44),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FontBold(
              title: '카테고리',
              size: 20,
            ),
            SizedBox(height: 16),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "카테고리를 입력해주세요",
                    hintStyle: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: SingUpPrimaryButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => HomePage()),
                  );
                },
                // onPressed: null,
                title: '프로필 작성 완료',
              ),
            ),
          ],
        ),
      ),
    );
  }
}