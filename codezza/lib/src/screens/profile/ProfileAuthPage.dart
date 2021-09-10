import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_session/flutter_session.dart';

import '/src/models/entity.dart';
import '/src/screens/HomePage.dart';
import '../../widgets/PrimaryButton.dart';
import '../../widgets/style_font.dart';

// 프로필(회원정보) 업데이트 페이지
// ProfileAuthPage  1. 닉네임
// ProfileAuthPage2 2. 자기소개(한줄소개)
class ProfileAuthPage extends StatelessWidget {
  final _uName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: buildBody(context),
      ),
    );
  }

  // Body
  Widget buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 168, left: 44, right: 44),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FontMedium(title: '공유하려면', size: 36),
          FontMedium(title: '프로필이', size: 36),
          FontMedium(title: '필요합니다.', size: 36),
          SizedBox(height: 24),
          FontMedium(title: '닉네임을 입력해주세요', size: 18),
          SizedBox(height: 4),
          TextField(
            maxLength: 10,
            controller: _uName,
            decoration: InputDecoration(
              hintText: '닉네임',
            ),
          ),
          SizedBox(height: 36),
          PrimaryButton(
            onPressed: () async {
              User user = User();
              user.uName = _uName.text;
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProfileAuthPage2(user: user)),
              );
            },
            title: '다음',
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // 텍스트에디터컨트롤러 초기화
    _uName.dispose();
    dispose();
  }
}

class ProfileAuthPage2 extends StatelessWidget {
  User user;
  ProfileAuthPage2({required this.user});

  final _uComment = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.only(top: 168, left: 44, right: 44),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FontMedium(
                title: '자기소개',
                size: 20,
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: TextField(
                  maxLength: 15,
                  controller: _uComment,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "간단하게 자기소개를 해 주세요",
                    hintStyle: TextStyle(fontSize: 16),
                    isDense: true,
                    contentPadding: EdgeInsets.all(8),
                  ),
                  maxLines: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: PrimaryButton(
                  onPressed: () async {
                    final response = await http.post(
                      Uri.parse('http://172.30.1.8:5000/uptProfile'),
                      headers: <String, String>{
                        'Content-Type': 'application/json; charset=UTF-8',
                      },
                      body: jsonEncode(<String, String>{
                        'uName': user.uName.toString(),
                        'uComment': _uComment.text,
                        'uId': await FlutterSession().get("token"),
                      }),
                    );
                    if (response.statusCode == 200) {
                      var result = json.decode(response.body);
                      if (result) {
                        await FlutterSession().set("uName", user.uName);
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => HomePage()),
                        );
                      } else {
                        showDialog(
                            context: context,
                            barrierDismissible:
                                false, //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
                            builder: (BuildContext context) {
                              return AlertDialog(
                                shape: RoundedRectangleBorder(
                                    // Dialog 화면 모서리 둥글게 조절
                                    borderRadius: BorderRadius.circular(10.0)),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('실패하였습니다.\n다시 시도해 주세요.'),
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
                    } else {
                      throw Exception('Failed to update profile');
                    }
                  },
                  title: '프로필 작성 완료',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
