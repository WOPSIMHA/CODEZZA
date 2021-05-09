import 'package:codezza/src/components/button/LoginPrimaryButton.dart';
import 'package:codezza/src/components/button/SignUpNeutralButton.dart';
import 'package:codezza/src/components/style/color_style.dart';
import 'package:codezza/src/components/style/font_style.dart';
import 'package:codezza/src/components/style/icon_style.dart';
import 'package:flutter/material.dart';

// 로그인
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _value = false;
  bool _isHidePassword = true;
  var _controller = TextEditingController();

  renderLoginPrimaryButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 24),
      child: LoginPrimaryButton(
        onPressed: () {
          print('로그인 클릭');
        },
        title: '로그인',
      ),
    );
  }

  renderSignUpButton() {
    return SignUpNeutralButton(
      onPressed: () {
        print('회원가입 클릭');
      },
      title: '회원가입',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white4,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 100,
              right: 44,
              left: 44,
              bottom: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/Logo3.png'),
                buildLoginForm(),
                SizedBox(height: 16),
                buildAutoLoginCheckBox(),
                renderLoginPrimaryButton(),
                renderSignUpButton(),
              ],
            ),
          ),
          buildTextRow(),
        ],
      ),
    );
  }

  Widget buildLoginForm() {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: 'ID',
              suffixIcon: GestureDetector(
                onTap: () => _controller.clear(),
                child: IconDataList.close_circle,
              ),
            ),
          ),
          SizedBox(height: 16),
          TextFormField(
            obscureText: _isHidePassword,
            decoration: InputDecoration(
              labelText: 'Password',
              suffixIcon: GestureDetector(
                onTap: _togglePasswrod,
                child: _isHidePassword
                    ? IconDataList.passwrodOn
                    : IconDataList.passwrodOff,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildAutoLoginCheckBox() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _value = !_value;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _value ? mainColor : Colors.white,
              border: Border.all(
                color: mainColor,
                width: 3,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: _value
                  ? Icon(Icons.check, size: 18.0, color: Colors.white)
                  : Icon(Icons.check, size: 18.0, color: Colors.white),
            ),
          ),
        ),
        SizedBox(width: 10),
        Text(
          '자동로그인',
          style: kNotoSansKRBold16,
        ),
      ],
    );
  }

  Widget buildTextRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '계정을 잊으셧나요?',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'NotoSansKR Regular',
          ),
        ),
        GestureDetector(
          onTap: () {
            print('아이디 찾기 클릭');
          },
          child: Text(
            ' 아이디 찾기',
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'NotoSansKR Bold',
            ),
          ),
        ),
        Text(
          ' 또는 ',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'NotoSansKR Regular',
          ),
        ),
        GestureDetector(
          onTap: () {
            print('비밀번호 찾기 클릭');
          },
          child: Text(
            '비밀번호 찾기',
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'NotoSansKR Bold',
            ),
          ),
        ),
      ],
    );
  }

  void _togglePasswrod() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }
}
