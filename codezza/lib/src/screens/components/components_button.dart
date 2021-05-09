import 'package:codezza/src/components/button/LoginPrimaryButton.dart';
import 'package:codezza/src/components/button/SignUpIdCheckButton.dart';
import 'package:codezza/src/components/button/SignUpNeutralButton.dart';
import 'package:codezza/src/components/button/SingUpPrimaryButton.dart';
import 'package:codezza/src/components/style/font_style.dart';
import 'package:flutter/material.dart';

class ComponentsButton extends StatefulWidget {
  @override
  _ComponentsButtonState createState() => _ComponentsButtonState();
}

class _ComponentsButtonState extends State<ComponentsButton> {
  renderSingUpNextButton() {
    return SingUpPrimaryButton(
      // onPressed: () {},
      onPressed: null,
      title: '다음',
    );
  }

  renderSingUpCompleteButton() {
    return SingUpPrimaryButton(
      onPressed: () {},
      // onPressed: null,
      title: '회원가입 완료하기',
      // onPressed: null,
    );
  }

  renderSingUpGoToProfileButton() {
    return SingUpPrimaryButton(
      onPressed: () {},
      // onPressed: null,
      title: '로그인하고 프로필 작성하기',
      // onPressed: null,
    );
  }

  renderSingUpProfileButton() {
    return SingUpPrimaryButton(
      onPressed: () {},
      // onPressed: null,
      title: '프로필 작성 완료하기',
      // onPressed: null,
    );
  }

  renderIdCheckButton() {
    return SignUpCheckButton(
      onPressed: () {},
      // onPressed: null,
      title: '중복확인',
      // onPressed: null,
    );
  }

  renderSNSCheckButton() {
    return SignUpCheckButton(
      onPressed: () {},
      // onPressed: null,
      title: '인증번호',
    );
  }

  renderSNSCheckButton2() {
    return SignUpCheckButton(
      onPressed: () {},
      // onPressed: null,
      title: '재전송',
    );
  }

  renderSignUpButton() {
    return SignUpNeutralButton(
      onPressed: () {},
      title: '회원가입',
    );
  }

  renderLoginPrimaryButton() {
    return LoginPrimaryButton(
      onPressed: () {},
      title: '로그인',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FontStyleBold(title: '버튼', size: 24),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                renderSingUpNextButton(),
                SizedBox(height: 10),
                renderSingUpCompleteButton(),
                SizedBox(height: 10),
                renderSingUpGoToProfileButton(),
                SizedBox(height: 10),
                renderSingUpProfileButton(),
                SizedBox(height: 10),
                renderSignUpButton(),
                SizedBox(height: 10),
                renderLoginPrimaryButton(),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 10),
                    renderIdCheckButton(),
                    SizedBox(width: 10),
                    renderSNSCheckButton(),
                    SizedBox(width: 10),
                    renderSNSCheckButton2(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
