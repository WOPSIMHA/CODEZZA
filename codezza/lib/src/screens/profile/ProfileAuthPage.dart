import 'package:codezza/src/common/AuthModule.dart';
import 'package:codezza/src/common/CommonModule.dart';
import 'package:codezza/src/widgets/style.dart';
import 'package:flutter/material.dart';

import '../home/HomePage.dart';
import '../../widgets/PrimaryButton.dart';

// 프로필(회원정보) 업데이트 페이지
// ProfileAuthPage  1. 닉네임
// ProfileAuthPage2 2. 자기소개(한줄소개)

final _uName = TextEditingController();
final _uComment = TextEditingController();

class ProfileAuthPage extends StatelessWidget {
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
              await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileAuthPage2()),
              );
            },
            title: '다음',
          ),
        ],
      ),
    );
  }
}

class ProfileAuthPage2 extends StatelessWidget {
  ProfileAuthPage2();

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
                    var params = {};
                    var sqlParams = {
                      'uName': _uName.text,
                      'uComment': _uComment.text,
                      'uId': await uid(),
                    };
                    params['sqlParams'] = sqlParams;
                    params['sqlType'] = "U";

                    dynamic result = await postHttp("updateProfile", params);
                    if (result['success'] == false) {
                      textAlertDialog(context, "실패하였습니다.\n다시 시도해 주세요.");
                      return;
                    } else if (result['success'] == true) {
                      dynamic returnUname = result['returnObj']['uName'];
                      await set_uname(returnUname);

                      _uName.dispose();
                      _uComment.dispose();
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => HomePage()),
                      );
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
