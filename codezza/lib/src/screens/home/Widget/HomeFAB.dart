import 'dart:convert';

import 'package:codezza/src/common/CommonModule.dart';
import 'package:codezza/src/screens/diary/Widget/AddUserWidget.dart';
import '/src/screens/profile/ProfileEditPage.dart';
import '/src/screens/diary/diaryAdd/DiaryAddPage.dart';
import '/src/widgets/style.dart';

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:http/http.dart' as http;
import 'package:rflutter_alert/rflutter_alert.dart';

// Home FAB 메뉴 버튼
class HomeFab extends StatefulWidget {
  @override
  _HomeFabState createState() => _HomeFabState();
}

class _HomeFabState extends State<HomeFab> {
  bool _fab = true; // FAB 버튼

  final _gNm = TextEditingController(); // TextFormField Controller
  final _searchText = TextEditingController(); // TextFormField Controller

  // List<User?>? searchUserList;
  // List<User?>? groupAddUserList;
  List<dynamic>? searchUserList;
  List<dynamic>? groupAddUserList;

  // set _searchUserList(List<dynamic>? value) {
  //   searchUserList = (value == null) ? null : value;
  // }

  set _groupAddUserList(List<dynamic>? value) {
    groupAddUserList = (value == null) ? null : value;
    print(groupAddUserList);
  }

  TextStyle _textStyle = TextStyle(
    color: kGray2,
    fontSize: 16,
    fontFamily: 'GmarketSansMedium',
  );

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      backgroundColor: Colors.white,
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 24.0, color: Colors.black),
      onOpen: () => print('Open'),
      onClose: () => print('Close'),
      curve: Curves.ease,
      visible: _fab,
      children: [
        // 일기 작성
        SpeedDialChild(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => DiaryAdd()),
            );
          },
          backgroundColor: Colors.tealAccent,
          child: Icon(Icons.edit, size: 36, color: kGray1),
          label: '일기 작성',
          labelBackgroundColor: Colors.white,
          labelStyle: _textStyle,
        ),

        // 그룹 추가
        SpeedDialChild(
          onTap: () {
            setDiaryGroupDialog();
          },
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.group_add_rounded, size: 36, color: kGray1),
          label: '그룹 추가',
          labelBackgroundColor: Colors.white,
          labelStyle: _textStyle,
        ),

        // 프로필 수정
        SpeedDialChild(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ProfileEdit()),
            );
          },
          backgroundColor: Colors.amberAccent,
          child: IconList.Edit,
          label: '프로필 수정',
          labelBackgroundColor: Colors.white,
          labelStyle: _textStyle,
        ),
        // IconList.Edit
      ],
    );
  }

  // 메뉴 on/off 변환 함수
  void setFabBool(bool fab) {
    setState(() {
      _fab = fab;
    });
  }

  // 그룹 Alert 띄우는 메소드
  void setDiaryGroupDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          //Dialog Main Title
          title: Center(
              child: FontMedium(
            title: "그룹방 만들기",
            color: kMainColor,
          )),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FontMedium(title: '친구들끼리 일기를 공유해요!'),
              Container(height: 10),
              TextFormField(
                  controller: _gNm,
                  decoration: InputDecoration(
                    labelText: '그룹방 이름',
                    suffixIcon: GestureDetector(
                      onTap: () => _gNm.clear(),
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
                  }),
              ListTile(
                title: FontMedium(
                  title: "친구 찾아보기",
                  color: Colors.black,
                ),
                leading: Icon(
                  Icons.add_circle,
                  size: 36.0,
                  color: kMainColor,
                ),
                onTap: () => searchUserDialog(),
              ),
              // SimpleDialogOption(
              //   onPressed: () {
              //     searchUserDialog();
              //   },
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Icon(Icons.add_circle, size: 36.0, color: Colors.grey),
              //       FontMedium(title: 'Add account'),
              //     ],
              //   ),
              // ),
            ],
          ),
          actions: <Widget>[
            ((groupAddUserList != null)
                ? AddUserWidget(userList: groupAddUserList)
                : Container()),
            DialogButton(
              child: FontMedium(title: '취소', color: Colors.white, size: 20),
              onPressed: () {
                _gNm.clear();
                _searchText.clear();
                Navigator.pop(context);
              },
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(116, 116, 191, 1.0),
                  Color.fromRGBO(52, 138, 199, 1.0),
                ],
              ),
            ),
            DialogButton(
              child: FontMedium(title: '확인', color: Colors.white, size: 20),
              onPressed: () => Navigator.pop(context),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(116, 116, 191, 1.0),
                  Color.fromRGBO(52, 138, 199, 1.0),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  // 친구 검색
  void searchUserDialog() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                //Dialog Main Title
                title: Center(
                    child: FontMedium(
                  title: "친구 검색",
                  color: kMainColor,
                )),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      controller: _searchText,
                      decoration: InputDecoration(
                        labelText: '아이디 또는 닉네임',
                        suffixIcon: GestureDetector(
                          onTap: () => _gNm.clear(),
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
                      onChanged: (text) async {
                        var params = {};
                        var sqlParams = {
                          'sessionUId': await uid(),
                          'searchUId': _searchText.text,
                          'searchUNm': _searchText.text,
                        };
                        params['sqlParams'] = sqlParams;
                        params['sqlType'] = "S";
                        print(params);
/**/
                        dynamic result = await postHttp("searchUser", params);
                        print(result['returnObj']['cnt']);
                        if (result['success'] == false) {
                          return;
                        } else if (result['success'] == true) {
                          dynamic returnList = result['returnObj']['list'];
                          // _groupAddUserList = list;
                        }
                      },
                    ),
                  ],
                ),
                actions: <Widget>[
                  ((searchUserList != null)
                      ? AddUserWidget(userList: searchUserList)
                      : Container()),
                  TextButton(
                    child: FontMedium(
                      title: "확인",
                      color: kMainColor,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            },
          );
        });
  }

  SimpleDialogOption addGroupMemberCallback() {
    return SimpleDialogOption(
      // onPressed: () {
      //   Navigator.pop(context, 'user03@gmail.com');
      // },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.account_circle, size: 36.0, color: Colors.green),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16.0),
            child: Text('user03@gmail.com'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _gNm.dispose();
    _searchText.dispose();
    super.dispose();
  }
}
