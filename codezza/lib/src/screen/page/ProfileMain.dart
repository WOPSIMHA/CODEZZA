import 'package:codezza/src/screen/component/SignUpPrimaryButton.dart';
import 'package:codezza/src/screen/profile/ProfilePage2.dart';
import 'package:codezza/src/style/font.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 156, left: 44, right: 44),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FontBold(title: '공유하려면', size: 36),
            FontBold(title: '프로필이', size: 36),
            FontBold(title: '필요합니다.', size: 36),
            SizedBox(height: 24),
            FontBold(title: '닉네임을 입력해주세요'),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '닉네임',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 124),
              child: SingUpPrimaryButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => ProfilePage2()),
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