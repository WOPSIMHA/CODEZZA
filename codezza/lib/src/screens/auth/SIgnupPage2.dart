import 'package:codezza/src/models/user/user.dart';

import '../../widgets/style.dart';
import '../../widgets/PrimaryButton.dart';
import 'SignupPage3.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 비밀번호 => 회원가입 완료로 데이터 전달 & 다음 페이지로 이동
class SignUpPage2 extends StatelessWidget {
  // @override
  // _SignUpPage2State createState() => _SignUpPage2State(user: user);
  // _SignUpPage2State({required this.user});

  // User 들고 있을 필드를 선언합니다.
  final User user;

  // 생성자는 User를 인자로 받습니다.
  SignUpPage2({required this.user});

  var _pw = TextEditingController(); // 비밀번호 텍스트 필드 Controller
  var _pwChecked = TextEditingController(); // 비밀번호 확인 텍스트 필드 Controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context, user),
    );
  }

  // Body
  Widget buildBody(context, user) {
    return Padding(
      padding: const EdgeInsets.only(top: 168, left: 44, right: 44),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FontMedium(title: user.uId),
          _textFormFieldPassword1(),
          SizedBox(height: 24),
          FontMedium(title: '비밀번호을 한 번 더 입력해주세요'),
          _textFormFieldPassword2(),
          _nextButton(),
        ],
      ),
    );
  }

  // 비밀번호 텍스트 필드
  Widget _textFormFieldPassword1() {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: TextFormField(
          controller: _pw,
          obscureText: true,
          decoration: InputDecoration(
            hintText: '비밀번호',
            suffixIcon: GestureDetector(
              onTap: () => _pw.clear(),
              child: IconList.CloseCircle,
            ),
          ),
        ),
      ),
    );
  }

  // 비밀번호 확인 텍스트 필드
  Widget _textFormFieldPassword2() {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: TextFormField(
          controller: _pwChecked,
          obscureText: true,
          decoration: InputDecoration(
            hintText: '비밀번호 확인',
            suffixIcon: GestureDetector(
              onTap: () => _pwChecked.clear(),
              child: IconList.CloseCircle,
            ),
          ),
        ),
      ),
    );
  }

  // 다음 버튼
  Widget _nextButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 54),
      child: PrimaryButton(
        onPressed: () {
          // Navigator.of(context).push(
          //   MaterialPageRoute(builder: (context) => SignUpPage3()),
          // );
        },
        title: '다음',
      ),
    );
  }
}

// class _SignUpPage2State extends State<SignUpPage2> {
//   // User 들고 있을 필드를 선언합니다.
//   User user = User();

//   // 생성자는 Todo를 인자로 받습니다.
//   _SignUpPage2State({required this.user});

//   var _pw = TextEditingController(); // 비밀번호 텍스트 필드 Controller
//   var _pwChecked = TextEditingController(); // 비밀번호 확인 텍스트 필드 Controller

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: buildBody(),
//     );
//   }

//   // Body
//   Widget buildBody() {
//     return Padding(
//       padding: const EdgeInsets.only(top: 168, left: 44, right: 44),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           FontMedium(title: '비밀번호을 입력해주세요'),
//           _textFormFieldPassword1(),
//           SizedBox(height: 24),
//           FontMedium(title: '비밀번호을 한 번 더 입력해주세요'),
//           _textFormFieldPassword2(),
//           _nextButton(),
//         ],
//       ),
//     );
//   }

//   // 비밀번호 텍스트 필드
//   Widget _textFormFieldPassword1() {
//     return Flexible(
//       child: Padding(
//         padding: const EdgeInsets.only(right: 8),
//         child: TextFormField(
//           controller: _pw,
//           obscureText: true,
//           decoration: InputDecoration(
//             hintText: '비밀번호',
//             suffixIcon: GestureDetector(
//               onTap: () => _pw.clear(),
//               child: IconList.CloseCircle,
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // 비밀번호 확인 텍스트 필드
//   Widget _textFormFieldPassword2() {
//     return Flexible(
//       child: Padding(
//         padding: const EdgeInsets.only(right: 8),
//         child: TextFormField(
//           controller: _pwChecked,
//           obscureText: true,
//           decoration: InputDecoration(
//             hintText: '비밀번호 확인',
//             suffixIcon: GestureDetector(
//               onTap: () => _pwChecked.clear(),
//               child: IconList.CloseCircle,
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // 다음 버튼
//   Widget _nextButton() {
//     return Padding(
//       padding: const EdgeInsets.only(top: 54),
//       child: PrimaryButton(
//         onPressed: () {
//           Navigator.of(context).push(
//             MaterialPageRoute(builder: (context) => SignUpPage3()),
//           );
//         },
//         title: '다음',
//       ),
//     );
//   }
// }
