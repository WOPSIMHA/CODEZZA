import 'package:codezza/src/screens/diary/GroupDairy/GroupDiaryListPage.dart';
import 'package:codezza/src/screens/diary/MyDiary/MyDiaryListPage.dart';
import 'package:codezza/src/screens/home/Widget/HomeDiaryList.dart';
import 'package:codezza/src/screens/home/Widget/HomeFAB.dart';
import 'package:codezza/src/screens/profile/Widget/ProfileCard.dart';
import 'package:codezza/src/widgets/style.dart';
import 'package:codezza/src/sample/sampledb.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Home Page
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0; // 탭 전환

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: buildBody(),
        floatingActionButton: HomeFab(),
      ),
    );
  }

  // Body
  Widget buildBody() {
    return Column(
      children: [
        SizedBox(height: 16),
        ProfileCard(user: TestData.users[1]),
        SizedBox(height: 16),
        _tabButton(),
        _index == 0 ? MyDiaryList() : GroupDiaryList(),
      ],
    );
  }

  // 일기장 선택 Tab
  Widget _tabButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          border: Border.all(color: kMainColor, width: 2),
        ),
        height: 60,
        width: 400,
        child: Row(
          children: [
            _myDiaryList(),
            _groupDiaryList(),
          ],
        ),
      ),
    );
  }

  // 개인 일기 List
  Widget _myDiaryList() {
    return DiaryList(
      tabIndex: 0,
      index: _index,
      title: '개인일기',
      onTap: () {
        setTabIndex(0);
      },
    );
  }

  // 그룹 일기 List
  Widget _groupDiaryList() {
    return DiaryList(
      tabIndex: 1,
      index: _index,
      title: '그룹일기',
      onTap: () {
        setTabIndex(1);
      },
    );
  }

  // 탭 전환 함수
  void setTabIndex(int index) {
    setState(() {
      _index = index;
    });
  }

  // 기존 코드을 home/widget/HomeFAB.dart 별도 파일로 만듦
}
