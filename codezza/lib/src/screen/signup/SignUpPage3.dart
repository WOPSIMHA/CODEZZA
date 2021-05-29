import 'package:codezza/src/screen/component/SignUpPrimaryButton.dart';
import 'package:codezza/src/screen/signup/SignUpPage4.dart';
import 'package:codezza/src/style/font.dart';
import 'package:flutter/material.dart';

class SignUpPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 44, right: 44),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 164),
              child: FontBold(title: '계정 찾을 때 이용할 이메일을 입력해주세요'),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '이메일 주소를 입력해주세요',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 174),
              child: SingUpPrimaryButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => SignUpPage4()),
                  );
                },
                // onPressed: null,
                title: '회원가입 완료하기',
              ),
            ),
          ],
        ),
      ),
    );
  }
}