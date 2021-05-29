import 'package:codezza/src/screen/component/SignUpPrimaryButton.dart';
import 'package:codezza/src/screen/page/LoginMain.dart';
import 'package:codezza/src/style/font.dart';
import 'package:flutter/material.dart';

class SignUpPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 142,
          left: 44,
          right: 44,
          bottom: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FontBold(
              title: '회원가입이',
              size: 36,
            ),
            FontBold(
              title: '완료되었습니다.',
              size: 36,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 249),
              child: SingUpPrimaryButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => LoginPage(),
                    ),
                  );
                },
                // onPressed: null,
                title: '로그인하고 프로필 작성하기',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
