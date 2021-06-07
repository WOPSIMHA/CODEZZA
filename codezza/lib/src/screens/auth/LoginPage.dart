import './../profile/ProfileAuthPage1.dart';
import '../../widgets/style.dart';
import 'widget/SignupNeutralButton.dart';
import 'widget/LoginPrimaryButton.dart';
import 'SignupPage1.dart';

import 'package:flutter/material.dart';

// 로그인 페이지
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _loginValue = false; // 자동로그인 체크 박스 on/off
  bool _isHidePassword = true; // 비밀번호 보이기/숨기기
  var _controller = TextEditingController(); // TextFormField Controller

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: _loginPage(),
    );
  }

  // 로그인 위젯
  Widget _loginPage() {
    return Scaffold(
      backgroundColor: kWhite4,
      body: ListView(
        children: [
          buildLoginForm(),
          buildTextRow(),
        ],
      ),
    );
  }

  // 로그인 폼 종합
  Widget buildLoginForm() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 80,
        right: 44,
        left: 44,
        bottom: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/Logo/Logo3.png'),
          SizedBox(height: 32),
          _loginForm(),
          SizedBox(height: 16),
          _loginCheckBox(),
          _loginPrimaryButton(),
          _signUpNeutralButton(),
        ],
      ),
    );
  }

  // 로그인 입력 폼
  Widget _loginForm() {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _userIDField(),
          SizedBox(height: 16),
          _passwordField(),
        ],
      ),
    );
  }

  // 아이디 텍스트 필드
  Widget _userIDField() {
    return TextFormField(
      controller: _controller,
      decoration: InputDecoration(
        labelText: 'ID',
        suffixIcon: GestureDetector(
          onTap: () => _controller.clear(),
          child: IconList.CloseCircle,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: kGray1),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: kGray1),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  // 패스워드 텍스트 필드
  Widget _passwordField() {
    return TextFormField(
      obscureText: _isHidePassword,
      decoration: InputDecoration(
        labelText: 'Password',
        suffixIcon: GestureDetector(
          onTap: _togglePassword,
          child: _isHidePassword
              ? IconList.PassWordOn
              : IconList.PassWordOff,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: kGray1),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: kGray1),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  // 자동로그인 선택 체크 박스
  Widget _loginCheckBox() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _loginValue = !_loginValue;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _loginValue ? kMainColor : Colors.white,
              border: Border.all(
                color: kMainColor,
                width: 3,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: _loginValue
                  ? Icon(Icons.check, size: 18.0, color: Colors.white)
                  : Icon(Icons.check, size: 18.0, color: Colors.white),
            ),
          ),
        ),
        SizedBox(width: 10),
        FontMedium(
          title: '자동로그인',
          size: 16,
        ),
      ],
    );
  }

  // 로그인 버튼
  Widget _loginPrimaryButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 12),
      child: LoginPrimaryButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => ProfileAuthPage()),
          );
          print('로그인 버튼');
        },
        title: '로그인',
      ),
    );
  }

  // 회원가입 버튼
  Widget _signUpNeutralButton() {
    return SignUpNeutralButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => SignUpPage()),
        );
        print('회원가입 버튼');
      },
      title: '회원가입',
    );
  }

  // password 보이기/숨기기 함수
  void _togglePassword() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  // 아이디 찾기와 비밀번호 찾기 페이지로 이동
  Widget buildTextRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FontLight(
          title: '계정을 잊으셧나요?',
          size: 12,
        ),
        GestureDetector(
          onTap: () {
            print('아이디 찾기 클릭');
          },
          child: FontMedium(
            color: kGreen2,
            title: '아이디 찾기',
            size: 14,
          ),
        ),
        FontLight(
          title: ' 또는 ',
          size: 12,
        ),
        GestureDetector(
          onTap: () {
            print('비밀번호 찾기 클릭');
          },
          child: FontMedium(
            color: kGreen2,
            title: '비밀번호 찾기',
            size: 14,
          ),
        ),
      ],
    );
  }
}
