import 'package:codezza/src/screen/component/SignUpPrimaryButton.dart';
import 'package:codezza/src/screen/signup/SignUpPage3.dart';
import 'package:codezza/src/style/font.dart';
import 'package:flutter/material.dart';

class SignUpPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 196, left: 44, right: 44),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FontBold(title: '비밀번호을 입력해주세요'),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '비밀번호',
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),
            FontBold(title: '비밀번호을 한 번 더 입력해주세요'),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '비밀번호 확인',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 54),
              child: SingUpPrimaryButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => SignUpPage3()),
                  );
                },
                // onPressed: null,
                title: '다음',
              ),
            ),
          ],
        ),
      ),
    );
  }
}