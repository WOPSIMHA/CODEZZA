import 'dart:convert';

import 'package:codezza/src/screens/diary/Widget/AddUserWidget.dart';
import 'package:flutter_session/flutter_session.dart';

import '/src/screens/diary/DiaryAddPage.dart';
import '/src/sample/sampledb.dart';
import '/src/screens/diary/GroupDiaryListPage.dart';
import '/src/widgets/style.dart';
import 'diary/MyDiaryListPage.dart';
import 'profile/Widget/ProfileCard.dart';

import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'package:http/http.dart' as http;

// Home Page
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0; // 탭 전환
  bool _fab = true; // FAB 버튼

  final _gNm = TextEditingController(); // TextFormField Controller
  final _searchText = TextEditingController(); // TextFormField Controller

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: buildBody(),
        floatingActionButton: _fabButton(),
      ),
    );
  }

  // Body
  Widget buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 16),
        ProfileCard(user: users[1]),
        SizedBox(height: 16),
        _tabButton(),
        _index == 0 ? MyDiaryList() : GroupDiaryList(),
      ],
    );
  }

  // 일기장 선택 탭
  Widget _tabButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          border: Border.all(color: kMainColor, width: 2),
        ),
        height: 60,
        width: 400,
        child: Row(
          children: [_myDiaryList(), _groupDiaryList()],
        ),
      ),
    );
  }

  // 개인 일기 List
  Widget _myDiaryList() {
    return Expanded(
      child: GestureDetector(
        child: Container(
          decoration: BoxDecoration(
            color: _index == 0 ? kMainColor : kWhite2,
            borderRadius: _index == 0
                ? BorderRadius.only(
                    topLeft: Radius.circular(6),
                    bottomLeft: Radius.circular(6),
                  )
                : BorderRadius.only(
                    topLeft: Radius.circular(6),
                    bottomLeft: Radius.circular(6),
                  ),
          ),
          child: Center(
            child: FontMedium(
              title: '개인일기',
              size: 20,
              color: _index == 0 ? Colors.black : Colors.black,
            ),
          ),
        ),
        onTap: () {
          setTabIndex(0);
        },
      ),
    );
  }

  // 그룹 일기 List
  Widget _groupDiaryList() {
    return Expanded(
      child: GestureDetector(
        child: Container(
          decoration: BoxDecoration(
            color: _index == 1 ? kMainColor : kWhite2,
            borderRadius: _index == 0
                ? BorderRadius.only(
                    topRight: Radius.circular(6),
                    bottomRight: Radius.circular(6),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(6),
                    bottomRight: Radius.circular(6),
                  ),
          ),
          child: Center(
            child: FontMedium(
              title: '그룹일기',
              size: 20,
              color: _index == 1 ? Colors.black : Colors.black,
            ),
          ),
        ),
        onTap: () {
          setTabIndex(1);
        },
      ),
    );
  }

  // 탭 전환 함수
  void setTabIndex(int index) {
    setState(() {
      _index = index;
    });
  }

  // FAB 메뉴 버튼
  SpeedDial _fabButton() {
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
          labelStyle: TextStyle(
            color: kGray2,
            fontSize: 16,
            fontFamily: 'GmarketSansMedium',
          ),
        ),
        // 그룹 추가
        SpeedDialChild(
          onTap: () {
            DiaryGroupDialog();
          },
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.group_add_rounded, size: 36, color: kGray1),
          label: '그룹 추가',
          labelBackgroundColor: Colors.white,
          labelStyle: TextStyle(
            color: kGray2,
            fontSize: 16,
            fontFamily: 'GmarketSansMedium',
          ),
        ),
        // 프로필 수정
        SpeedDialChild(
          onTap: () {},
          backgroundColor: Colors.amberAccent,
          child: IconList.Edit,
          label: '프로필 수정',
          labelBackgroundColor: Colors.white,
          labelStyle: TextStyle(
            color: kGray2,
            fontSize: 16,
            fontFamily: 'GmarketSansMedium',
          ),
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
  void DiaryGroupDialog() {
    showDialog(
        context: context,
        barrierDismissible: false, //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
                borderRadius: BorderRadius.circular(10.0)),
            //Dialog Main Title
            title: Column(
              children: <Widget>[
                new Text("그룹방 만들기"),
              ],
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text("친구들끼리 일기를 공유해요!"),
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
              ],
            ),
            actions: <Widget>[
              ListView.builder(
                itemCount: 8,
                itemBuilder: (BuildContext context, int i) {
                  return AddUserWidget(
                    index: i,
                  );
                },
              ),
              SimpleDialogOption(
                onPressed: () {
                  searchUserDialog();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.add_circle, size: 36.0, color: Colors.grey),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 16.0),
                      child: Text('Add account'),
                    ),
                  ],
                ),
              ),
              DialogButton(
                child: Text(
                  "취소",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () => Navigator.pop(context),
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(116, 116, 191, 1.0),
                  Color.fromRGBO(52, 138, 199, 1.0)
                ]),
              ),
              DialogButton(
                child: Text(
                  "확인",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () => Navigator.pop(context),
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(116, 116, 191, 1.0),
                  Color.fromRGBO(52, 138, 199, 1.0)
                ]),
              ),
            ],
          );
        });
  }

  // 친구 검색
  void searchUserDialog() {
    showDialog(
        context: context,
        barrierDismissible: false, //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
                borderRadius: BorderRadius.circular(10.0)),
            //Dialog Main Title
            title: Column(
              children: <Widget>[
                new Text("친구 검색"),
              ],
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      setState(() {});
                      final response = await http.post(
                        Uri.parse('http://192.168.0.110:5000/searchUser'),
                        headers: <String, String>{
                          'Content-Type': 'application/json; charset=UTF-8',
                        },
                        body: jsonEncode(<String, String>{
                          'sessionUId': await FlutterSession().get("token"),
                          'searchUId': _searchText.text,
                          'searchUNm': _searchText.text,
                        }),
                      );
                      if (response.statusCode == 200) {
                        var result = json.decode(response.body);
                        print(response.body);
                        // if (result.suc) {
                        //   print(result);
                        // } else {
                        //   print("fail");
                        // }
                      } else {
                        throw Exception('Failed to search user');
                      }
                    }),
              ],
            ),
            actions: <Widget>[
              SimpleDialogOption(
                // onPressed: () {
                //   Navigator.pop(context, 'user01@gmail.com');
                // },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.account_circle,
                        size: 36.0, color: Colors.orange),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 16.0),
                      child: Text('user01@gmail.com'),
                    ),
                  ],
                ),
              ),
              new FlatButton(
                child: new Text("확인"),
                onPressed: () async {
                  _searchText.dispose();
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

  SimpleDialogOption addGroupMember_callback() {
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
}
