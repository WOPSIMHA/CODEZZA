import 'dart:async';
import 'dart:convert';

import 'package:codezza/src/screens/HomePage.dart';
import 'package:flutter_session/flutter_session.dart';

import '../../widgets/style.dart';
import 'widget/SignupNeutralButton.dart';
import 'widget/LoginPrimaryButton.dart';
import 'SignupPage.dart';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

// 로그인 페이지
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _autologin = false; // 자동로그인 체크 박스 on/off
  bool _isHidePassword = true; // 비밀번호 보이기/숨기기
  final _uId = TextEditingController(); // TextFormField Controller
  final _uPw = TextEditingController(); // 텍스트필드 입력 값을 가져오기 위한 컨트롤러

  @override
  Widget build(BuildContext context) {
    // 페이지에 위젯 만들어 출력하는 함수
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
          buildLoginForm(), // ID, PW 입력창 위젯
          // buildTextRow(),  // ID, PW 찾기 위젯
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
          // _loginCheckBox(),  // 자동로그인 체크박스 위젯
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
        controller: _uId,
        decoration: InputDecoration(
          labelText: 'ID',
          suffixIcon: GestureDetector(
            onTap: () => _uId.clear(),
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
        onChanged: (text) {
          setState(() {});
        });
  }

  // 패스워드 텍스트 필드
  Widget _passwordField() {
    return TextFormField(
      controller: _uPw,
      obscureText: _isHidePassword,
      decoration: InputDecoration(
        labelText: 'Password',
        suffixIcon: GestureDetector(
          onTap: _togglePassword,
          child: _isHidePassword ? IconList.PassWordOn : IconList.PassWordOff,
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
      onChanged: (text) {
        setState(() {});
      },
    );
  }

  // 자동로그인 선택 체크 박스
  Widget _loginCheckBox() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _autologin = !_autologin;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _autologin ? kMainColor : Colors.white,
              border: Border.all(
                color: kMainColor,
                width: 3,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: _autologin
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
        onPressed: () async {
          if (_uId.text == "" || _uPw.text == "") {
            LoginAlertDialog();
            return;
          }
          final response = await http.post(
            Uri.parse('http://192.168.0.110:5000/login'),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(<String, String>{
              'uId': _uId.text,
              'uPw': _uPw.text,
            }),
          );
          if (response.statusCode == 200) {
            var result = json.decode(response.body);
            if (result) {
              await FlutterSession().set("token", _uId.text);
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => HomePage()),
              );
            } else {
              LoginAlertDialog();
            }
          } else {
            throw Exception('Failed to login');
          }
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

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    // 텍스트에디터컨트롤러 초기화
    _uId.dispose();
    _uPw.dispose();
    super.dispose();
  }

  // 로그인 관련 Alert 띄우는 메소드
  void LoginAlertDialog() {
    showDialog(
        context: context,
        barrierDismissible: false, //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
                borderRadius: BorderRadius.circular(10.0)),
            //Dialog Main Title
            // title: Column(
            //   children: <Widget>[
            //     new Text("로그인"),
            //   ],
            // ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "아이디와 비밀번호를 확인해 주세요!",
                ),
              ],
            ),
            actions: <Widget>[
              new FlatButton(
                child: new Text("확인"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }
}
