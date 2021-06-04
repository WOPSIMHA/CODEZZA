import '../../utils/SingUpPrimaryButton.dart';
import '../../widgets/font.dart';
import 'package:flutter/material.dart';

import 'LoginPage.dart';

// 회원가입 완료
class SignUpPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 168,
          left: 44,
          right: 44,
          bottom: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FontMedium(
              title: '회원가입이',
              size: 36,
            ),
            FontMedium(
              title: '완료되었습니다.',
              size: 36,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
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