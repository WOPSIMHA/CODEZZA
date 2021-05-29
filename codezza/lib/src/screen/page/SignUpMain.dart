import 'package:codezza/src/screen/component/SignUpCheckButton.dart';
import 'package:codezza/src/screen/component/SignUpPrimaryButton.dart';
import 'package:codezza/src/screen/signup/SignUpPage2.dart';
import 'package:codezza/src/style/font.dart';
import 'package:flutter/material.dart';

// 회원가입
class SignUpPage extends StatelessWidget {
  renderIdCheckButton() {
    return SignUpCheckButton(
      onPressed: () {},
      title: '중복확인',
    );
  }

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
                Padding(
                  padding: const EdgeInsets.only(top: 54),
                  child: SingUpPrimaryButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => SignUpPage2(),
                        ),
                      );
                    },
                    // onPressed: null,
                    title: '다음',
                  ),
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
        FontBold(
          title: '나만의 모바일',
          size: 36,
        ),
        FontBold(
          title: '일기장을',
          size: 36,
        ),
        FontBold(
          title: '만들어 볼까요?',
          size: 36,
        ),
        SizedBox(height: 24),
        FontNormal(
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
}
