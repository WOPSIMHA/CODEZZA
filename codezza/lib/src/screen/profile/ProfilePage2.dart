import 'package:codezza/src/screen/component/SignUpPrimaryButton.dart';
import 'package:codezza/src/screen/profile/ProfilePage3.dart';
import 'package:codezza/src/style/font.dart';
import 'package:flutter/material.dart';

class ProfilePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 188, left: 44, right: 44),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FontBold(
              title: '자기소개',
              size: 20,
            ),
            SizedBox(height: 16),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "간단하게 자기소개를 해주세요",
                    hintStyle: TextStyle(fontSize: 16),
                    isDense: true,
                    contentPadding: EdgeInsets.all(8),
                  ),
                  maxLines: 10,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: SingUpPrimaryButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => ProfilePage3()),
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
