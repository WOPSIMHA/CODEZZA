import '../../utils/SingUpPrimaryButton.dart';
import '../../widgets/font.dart';
import 'SignupPage3.dart';

import 'package:flutter/material.dart';

// 비밀번호
class SignUpPage2 extends StatefulWidget {
  @override
  _SignUpPage2State createState() => _SignUpPage2State();
}
class _SignUpPage2State extends State<SignUpPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 168, left: 44, right: 44),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FontMedium(title: '비밀번호을 입력해주세요'),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: '비밀번호',
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),
            FontMedium(title: '비밀번호을 한 번 더 입력해주세요'),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: TextField(
                  obscureText: true,
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