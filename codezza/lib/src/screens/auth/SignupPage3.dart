import '../../widgets/style_font.dart';
import '../../widgets/PrimaryButton.dart';
import 'SignupPage4.dart';

import 'package:flutter/material.dart';

// 이메일 => 회원가입 완료로 데이터 전달 & 다음 페이지로 이동
class SignUpPage3 extends StatefulWidget {
  @override
  _SignUpPage3State createState() => _SignUpPage3State();
}

class _SignUpPage3State extends State<SignUpPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 44, right: 44),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 168),
              child: FontMedium(
                title: '계정 찾을 때 이용할 이메일을 입력해주세요',
                size: 14,
              ),
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
              child: PrimaryButton(
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
