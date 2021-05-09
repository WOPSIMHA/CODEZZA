import 'package:codezza/src/components/button/SignUpIdCheckButton.dart';
import 'package:codezza/src/components/button/SingUpPrimaryButton.dart';
import 'package:codezza/src/components/style/font_style.dart';
import 'package:codezza/src/screens/user/login_screen.dart';
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
        FontStyleBold(
          title: '나만의 모바일',
          size: 36,
        ),
        FontStyleBold(
          title: '일기장을',
          size: 36,
        ),
        FontStyleBold(
          title: '만들어 볼까요?',
          size: 36,
        ),
        SizedBox(height: 24),
        FontStyleNormal(
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

class SignUpPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 196, left: 44, right: 44),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FontStyleBold(title: '비밀번호을 입력해주세요'),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '비밀번호',
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),
            FontStyleBold(title: '비밀번호을 한 번 더 입력해주세요'),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '비밀번호 확인',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 54),
              child: SingUpPrimaryButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => SignUpPage3()),
                  );
                },
                // onPressed: null,
                title: '다음',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 44, right: 44),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 164),
              child: FontStyleBold(title: '계정 찾을 때 이용할 이메일을 입력해주세요'),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '이메일 주소를 입력해주세요',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 174),
              child: SingUpPrimaryButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => SignUpPage4()),
                  );
                },
                // onPressed: null,
                title: '회원가입 완료하기',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 142,
          left: 44,
          right: 44,
          bottom: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FontStyleBold(
              title: '회원가입이',
              size: 36,
            ),
            FontStyleBold(
              title: '완료되었습니다.',
              size: 36,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 249),
              child: SingUpPrimaryButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => LoginPage(),
                    ),
                  );
                },
                // onPressed: null,
                title: '로그인하고 프로필 작성하기',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
