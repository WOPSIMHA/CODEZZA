import './../profile/ProfileAuthPage2.dart';
import '../../widgets/PrimaryButton.dart';
import '../../widgets/style_font.dart';

import 'package:flutter/material.dart';

// 닉네임 => 카테고리 페이지로 데이터 전달 & 다음 페이지로 이동
class ProfileAuthPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: buildBody(context),
      ),
    );
  }

  // Body
  Widget buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 168, left: 44, right: 44),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FontMedium(title: '공유하려면', size: 36),
          FontMedium(title: '프로필이', size: 36),
          FontMedium(title: '필요합니다.', size: 36),
          SizedBox(height: 24),
          FontMedium(title: '닉네임을 입력해주세요', size: 18),
          SizedBox(height: 4),
          TextField(
            decoration: InputDecoration(
              hintText: '닉네임',
            ),
          ),
          SizedBox(height: 36),
          PrimaryButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => ProfileAuthPage2()),
              );
            },
            title: '다음',
          ),
        ],
      ),
    );
  }

}
