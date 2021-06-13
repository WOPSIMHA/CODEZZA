import '/src/screens/diary/DiaryAddPage.dart';
import '/src/sample/sampledb.dart';
import '/src/screens/diary/GroupDiaryListPage.dart';
import '/src/widgets/style.dart';
import 'diary/MyDiaryListPage.dart';
import 'profile/Widget/ProfileCard.dart';

import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Home Page
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0; // 탭 전환
  bool _fab = true; // FAB 버튼

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
          onTap: () {},
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
}
