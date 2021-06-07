import '../../widgets/style.dart';
import './../auth/SignupPage2.dart';
import '../../widgets/PrimaryButton.dart';
import 'widget/SignUpCheckButton.dart';

import 'package:flutter/material.dart';

// 아이디 => 회원가입 완료로 데이터 전달 & 다음 페이지로 이동
class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: buildBody(),
    );
  }

  // Body
  Widget buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 168,
            left: 44,
            right: 44,
            bottom: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _textRow(),
              _textFieldId(),
              SizedBox(height: 54),
              _nextButton(),
            ],
          ),
        ),
      ],
    );
  }

  // title
  Widget _textRow() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FontMedium(
          title: '나만의 모바일',
          size: 36,
        ),
        FontMedium(
          title: '일기장을',
          size: 36,
        ),
        FontMedium(
          title: '만들어 볼까요?',
          size: 36,
        ),
        SizedBox(height: 24),
        FontLight(
          title: '일기를 관리하려면 회원가입이 필요해요 :)',
          size: 14,
        ),
      ],
    );
  }

  // 아이디 텍스트 필드
  Widget _textFieldId() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: TextField(
              decoration: InputDecoration(
                labelText: '아이디를 입력해주세요',
              ),
            ),
          ),
        ),
        _textFieldIdCheckButton(),
      ],
    );
  }

  // 아이디 중복 체크 버튼
  Widget _textFieldIdCheckButton() {
    return SignUpCheckButton(
      onPressed: () {},
      title: '중복확인',
    );
  }

  // 다음 버튼
  Widget _nextButton() {
    return PrimaryButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => SignUpPage2()),
        );
      },
      // onPressed: null,
      title: '다음',
    );
  }

}
