import 'package:codezza/src/screens/profile/ProfileAuthPage3.dart';

import '../../utils/SingUpPrimaryButton.dart';
import '../../widgets/font.dart';
import 'package:flutter/material.dart';

class ProfileAuthPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.only(top: 168, left: 44, right: 44),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FontMedium(
                title: '자기소개',
                size: 20,
              ),
              SizedBox(height: 16),
              Padding(
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
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: SingUpPrimaryButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => ProfileAuthPage3()),
                    );
                  },
                  title: '다음',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
