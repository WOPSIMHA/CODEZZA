import '/src/widgets/PrimaryButton.dart';
import '/src/widgets/style.dart';

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
      body: buildBody(),
    );
  }

  // Body
  Widget buildBody() {
    return Padding(
      padding: const EdgeInsets.only(left: 44, right: 44),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _title(),
          _emailTextFormField(),
          _nextButton(context),
        ],
      ),
    );
  }

  // title
  Widget _title() {
    return Padding(
      padding: const EdgeInsets.only(top: 168),
      child: FontMedium(
        title: '계정 찾을 때 이용할 이메일을 입력해주세요',
        size: 14,
      ),
    );
  }

  // email 텍스트 필드
  Widget _emailTextFormField() {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: TextField(
          decoration: InputDecoration(
            hintText: '이메일 주소를 입력해주세요',
          ),
        ),
      ),
    );
  }

  // 다음 버튼
  Widget _nextButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 174),
      child: PrimaryButton(
        onPressed: () {
          // Navigator.of(context).push(
          //   MaterialPageRoute(builder: (context) => SignUpPage4()),
          // );
        },
        title: '회원가입 완료하기',
      ),
    );
  }
}
