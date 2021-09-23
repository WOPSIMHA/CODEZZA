import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '/src/widgets/PrimaryButton.dart';
import '/src/widgets/flutter_session.dart';
import '/src/widgets/style.dart';
import '/src/models/entity.dart';
import '/src/screens/profile/ProfileAuthPage.dart';
import 'widget/SignUpCheckButton.dart';

// 회원가입 페이지
// SignUpPage 1. 아이디 페이지
// SignUpPage2 2. 비밀번호 페이지
// SignUpPage3 3. 회원가입 완료 페이지

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _uId = TextEditingController(); //사용자가 입력한 아이디 값
  String _confirmId = ""; // 중복체크 완료된 아이디

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
              _nextButton(this.context),
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
              maxLength: 20, // 길이 제한
              controller: _uId,
              decoration: InputDecoration(
                labelText: '아이디를 입력해주세요(6 글자 이상)',
              ),
            ),
          ),
        ),
        _textFieldIdCheckButton(),
      ],
    );
  }

  // 아이디 중복체크 버튼
  Widget _textFieldIdCheckButton() {
    return SignUpCheckButton(
      onPressed: () async {
        if (_uId.text == "") {
          setIdCheckAlertDialog(1);
          return;
        } else if (_uId.text.length < 6) {
          setIdCheckAlertDialog(4);
          return;
        }
        final response = await http.post(
          Uri.parse('http://172.30.1.8:5000/idCheck'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(<String, String>{
            'uId': _uId.text,
          }),
        );
        if (response.statusCode == 200) {
          var result = json.decode(response.body);
          if (result) {
            setIdCheckAlertDialog(3);
            _confirmId = _uId.text;
          } else {
            setIdCheckAlertDialog(1);
          }
        } else {
          throw Exception('Failed to register');
        }
      },
      title: '중복확인',
    );
  }

  // 다음 버튼
  Widget _nextButton(BuildContext context) {
    return PrimaryButton(
      onPressed: () async {
        if (_uId.text != _confirmId || _confirmId == "") {
          setIdCheckAlertDialog(2);
          return;
        } else {
          final User user = User();
          user.uId = _uId.text;
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignUpPage2(user: user)),
          );
        }
      },
      title: '다음',
    );
  }

  @override
  void dispose() {
    // 텍스트에디터컨트롤러 초기화
    _uId.dispose();
    super.dispose();
  }

  // 아이디 중복 체크 관련 Alert 띄우는 메소드
  void setIdCheckAlertDialog(_type) {
    String msg = "";
    if (_type == 1) {
      // 공백 또는 중복
      msg = "사용하실 수 없는 아이디입니다!";
    } else if (_type == 2) {
      // 중복체크 하지 않고 `다음` 버튼 클릭한 경우
      msg = "아이디 중복을 확인해 주세요!";
    } else if (_type == 3) {
      // 중복체크 True
      msg = "사용하실 수 있는 아이디입니다!";
    } else if (_type == 4) {
      // 자리 수 6자 미만
      msg = "아이디는 6자 이상 입력해 주세요.";
    }
    showDialog(
        context: this.context,
        barrierDismissible: false,
        //barrierDismissible - Dialog 를 제외한 다른 화면 터치 x
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                // Dialog 화면 모서리 둥글게 조절
                borderRadius: BorderRadius.circular(10.0)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(msg),
              ],
            ),
            actions: <Widget>[
              TextButton(
                child: Text("확인"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }
}

class SignUpPage2 extends StatefulWidget {
  // SignUp Page 에서 넘어온 User 받을 변수
  final User user;

  // 생성자에 User 인자 선언
  SignUpPage2({required this.user});

  @override
  State<SignUpPage2> createState() => _SignUpPage2State();
}

class _SignUpPage2State extends State<SignUpPage2> {
  var _uPw = TextEditingController();
  var _uPwChecked = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context, widget.user),
    );
  }

  Widget buildBody(BuildContext context, User user) {
    return Padding(
      padding: const EdgeInsets.only(top: 168, left: 44, right: 44),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FontMedium(title: '비밀번호을 입력해 주세요.'),
          _textFormFieldPassword1(),
          SizedBox(height: 24),
          FontMedium(title: '비밀번호을 한 번 더 입력해 주세요.'),
          _textFormFieldPassword2(),
          _nextButton2(context),
        ],
      ),
    );
  }

  Widget _textFormFieldPassword1() {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: TextFormField(
          controller: _uPw,
          obscureText: true,
          decoration: InputDecoration(
            hintText: '비밀번호는 6 글자 이상으로 입력해 주세요',
            suffixIcon: GestureDetector(
              onTap: () => _uPw.clear(),
              child: IconList.CloseCircle,
            ),
          ),
        ),
      ),
    );
  }

  Widget _textFormFieldPassword2() {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: TextFormField(
          controller: _uPwChecked,
          obscureText: true,
          decoration: InputDecoration(
            hintText: '비밀번호 확인',
            suffixIcon: GestureDetector(
              onTap: () => _uPwChecked.clear(),
              child: IconList.CloseCircle,
            ),
          ),
        ),
      ),
    );
  }

  Widget _nextButton2(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 54),
      child: PrimaryButton(
        onPressed: () async {
          if (_uPw.text.length < 6) {
            setPwCheckAlertDialog(context, 1);
            return;
          }
          if (_uPw.text != _uPwChecked.text) {
            setPwCheckAlertDialog(context, 2);
            return;
          }
          widget.user.uPw = _uPw.text;
          await Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SignUpPage3(user: widget.user)),
          );
        },
        title: '다음',
      ),
    );
  }

  void setPwCheckAlertDialog(BuildContext context, _type) {
    String msg = "";
    if (_type == 1) {
      // 자리 수 6자 미만
      msg = "비밀번호는 6자 이상 입력해 주세요.";
    } else if (_type == 2) {
      // 비밀번호 비밀번호 확인 불일치
      msg = "비밀번호와 비밀번호 확인이 일치하지 않습니다!";
    }
    showDialog(
        context: context,
        //barrierDismissible - Dialog 를 제외한 다른 화면 터치 x
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                // Dialog 화면 모서리 둥글게 조절
                borderRadius: BorderRadius.circular(10.0)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(msg),
              ],
            ),
            actions: <Widget>[
              TextButton(
                child: Text("확인"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }
}

class SignUpPage3 extends StatelessWidget {
  // SignUp Page 에서 넘어온 User 받을 변수
  final User user;

  // 생성자에 User 인자 선언
  SignUpPage3({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context, user),
    );
  }

  // Body
  Widget buildBody(BuildContext context, User user) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 168,
        left: 44,
        right: 44,
        bottom: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FontMedium(
            title: '회원가입이',
            size: 36,
          ),
          FontMedium(
            title: '완료되었습니다.',
            size: 36,
          ),
          _buildButton(context),
        ],
      ),
    );
  }

  // 회원가입 완료 버튼
  Widget _buildButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 200),
      child: PrimaryButton(
        onPressed: () async {
          final response = await http.post(
            Uri.parse('http://172.30.1.8:5000/register'),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(<String, String>{
              'uId': user.uId.toString(),
              'uPw': user.uPw.toString(),
              'insId': user.uId.toString(),
            }),
          );
          if (response.statusCode == 200) {
            var result = json.decode(response.body);
            if (result) {
              user.uPw = "";
              await FlutterSession().set("token", user.uId);
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => ProfileAuthPage()),
              );
            } else {
              showDialog(
                context: context,
                //barrierDismissible - Dialog 를 제외한 다른 화면 터치 x
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      // Dialog 화면 모서리 둥글게 조절
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('회원가입에 실패하였습니다.\n다시 시도해 주세요!'),
                      ],
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: Text("확인"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  );
                },
              );
            }
          } else {
            throw Exception('Failed to login');
          }
        },
        title: '로그인하고 프로필 작성하기',
      ),
    );
  }
}
