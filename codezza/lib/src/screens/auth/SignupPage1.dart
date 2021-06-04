import 'package:codezza/src/screens/auth/SIgnupPage2.dart';

import '../../utils/SignUpCheckButton.dart';
import '../../utils/SingUpPrimaryButton.dart';
import '../../widgets/font.dart';
import 'package:flutter/material.dart';

// 아이디
class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}
class _SignUpPageState extends State<SignUpPage> {
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
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
                textRow(),
                renderId(),
                SizedBox(height: 54),
                SingUpPrimaryButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => SignUpPage2()),
                    );
                  },
                  // onPressed: null,
                  title: '다음',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget textRow() {
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

  Widget renderId() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: '아이디를 입력해주세요',
              ),
            ),
          ),
        ),
        renderIdCheckButton(),
      ],
    );
  }

  renderIdCheckButton() {
    return SignUpCheckButton(
      onPressed: () {},
      title: '중복확인',
    );
  }
}