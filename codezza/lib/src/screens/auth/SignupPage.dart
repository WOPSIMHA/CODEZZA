import 'package:codezza/src/common/AuthModule.dart';
import 'package:codezza/src/common/CommonModule.dart';
import 'package:codezza/src/screens/auth/widget/SignUpCheckButton.dart';
import 'package:flutter/material.dart';

import 'package:codezza/src/widgets/PrimaryButton.dart';
import 'package:codezza/src/widgets/style.dart';
import 'package:codezza/src/screens/profile/ProfileAuthPage.dart';

// 회원가입 페이지
// SignUpPage 1. 아이디 페이지
// SignUpPage2 2. 비밀번호 페이지
// SignUpPage3 3. 회원가입 완료 페이지

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

var _uId = TextEditingController(); //사용자가 입력한 값
var _uPw = TextEditingController();
var _uPwChecked = TextEditingController();

class _SignUpPageState extends State<SignUpPage> {
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
          textAlertDialog(context, "사용하실 수 없는 아이디입니다!");
          return;
        } else if (_uId.text.length < 6) {
          textAlertDialog(context, "아이디는 6자 이상 입력해 주세요.");
          return;
        }

        var params = {};
        var sqlParams = {
          'uId': _uId.text,
        };
        params['sqlParams'] = sqlParams;
        params['sqlType'] = "S";

        dynamic result = await postHttp("idCheck", params);
        if (result['success'] == false) {
          textAlertDialog(context, "사용하실 수 없는 아이디입니다!");
          return;
        } else if (result['success'] == true) {
          dynamic returnCnt = result['returnObj']['cnt'];
          if (returnCnt == 0) {
            textAlertDialog(context, "사용하실 수 있는 아이디입니다!");
          } else if (returnCnt > 0) {
            textAlertDialog(context, "중복된 아이디입니다!");
          }
          _confirmId = _uId.text;
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
          textAlertDialog(context, "아이디 중복을 확인해 주세요!");
          return;
        } else {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignUpPage2()),
          );
        }
      },
      title: '다음',
    );
  }
}

class SignUpPage2 extends StatefulWidget {
  SignUpPage2();

  @override
  State<SignUpPage2> createState() => _SignUpPage2State();
}

class _SignUpPage2State extends State<SignUpPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
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
            textAlertDialog(context, "비밀번호는 6자 이상 입력해 주세요.");
            return;
          }
          if (_uPw.text != _uPwChecked.text) {
            textAlertDialog(context, "비밀번호와 비밀번호 확인이\n일치하지 않습니다!");
            return;
          }
          if (_uId.text == "" || _uPw.text == "") {
            textAlertDialog(context, "아이디와 비밀번호를\n정확하게 입력해 주세요!");
            return;
          }

          var params = {};
          var sqlParams = {
            'uId': _uId.text,
            'uPw': _uPw.text,
            'insId': _uId.text,
          };
          params['sqlParams'] = sqlParams;
          params['sqlType'] = "I";
          print(params['sqlParams']);
          dynamic result = await postHttp("register", params);
          if (result['success'] == false) {
            textAlertDialog(context, "회원가입에 실패하였습니다.\n다시 시도해 주세요!");
            _SignUpPageState;
            return;
          } else if (result['success'] == true) {
            dynamic returnId = result['returnObj']['uId'];
            await set_uid(returnId);

            _uId.dispose();
            _uPw.dispose();
            _uPwChecked.dispose();
          }
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignUpPage3()),
          );
        },
        title: '다음',
      ),
    );
  }
}

class SignUpPage3 extends StatelessWidget {
  SignUpPage3();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  // Body
  Widget buildBody(BuildContext context) {
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
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => ProfileAuthPage()));
        },
        title: '프로필 작성하러 가기',
      ),
    );
  }
}
