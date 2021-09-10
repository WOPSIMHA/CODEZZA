import '/src/models/entity.dart';
import '/src/screens/diary/Widget/DiaryAddForm.dart';
import '/src/widgets/style.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

// 일기 작성 페이지
class DiaryAdd extends StatefulWidget {
  @override
  _DiaryAddState createState() => _DiaryAddState();
}

class _DiaryAddState extends State<DiaryAdd> {
  List<Diary> diaryList = [Diary()]; // 일기 사진 Form List
  int _index = 0; // 탭 페이지 index
  bool _dPrivate = false; // 공개 여부 value
  List<String> testGroupData = ['그룹1', '그룹2', '그룹3', '그룹4']; // test 그룹 데이터
  final _title = TextEditingController(); // 일기 제목

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: InkWell(
              child: IconList.Back,
              onTap: () {},
            ),
          ),
          backgroundColor: kWhite2,
          elevation: 0,
          toolbarHeight: 65,
          actions: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextButton(
                onPressed: () {},
                child: FontMedium(
                  title: '등록',
                  size: 14,
                  color: kGray1,
                ),
                style: TextButton.styleFrom(
                  backgroundColor: kMainColor,
                ),
              ),
            )
          ],
        ),
        body: buildBody(),
      ),
    );
  }

  // Body
  Widget buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _textTitle(),
        _tabButton(),
        _index == 0 ? _onOffListTile() : _formGroupList(),
        _diaryFormCard(),
        // diaryList.length <= 0
        //     ? Padding(
        //         padding: const EdgeInsets.only(bottom: 36.0),
        //         child: _addButton())
        //     : Padding(
        //         padding: const EdgeInsets.only(top: 8, bottom: 8),
        //         child: _addButton()),
      ],
    );
  }

  // 일기장 선택 Tab
  Widget _tabButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 40, right: 40),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          border: Border.all(color: kMainColor, width: 2),
        ),
        height: 60,
        width: 400,
        child: Row(
          children: [_myDiary(), _groupDiary()],
        ),
      ),
    );
  }

  // 개인 일기
  Widget _myDiary() {
    return Expanded(
      child: InkWell(
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
          _tabIndex(0);
        },
      ),
    );
  }

  // 그룹 일기
  Widget _groupDiary() {
    return Expanded(
      child: InkWell(
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
          _tabIndex(1);
        },
      ),
    );
  }

  // Tab 전환 함수
  void _tabIndex(int index) {
    setState(() {
      _index = index;
    });
  }

  // 일기 제목
  Widget _textTitle() {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 8, bottom: 8),
      child: TextFormField(
        controller: _title,
        decoration: InputDecoration(
          hintText: '제목',
          hintStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'GmarketSansMedium',
          ),
        ),
      ),
    );
  }

  // 개인 일기 공개 여부 Switch ListTile
  Widget _onOffListTile() {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
      child: ListTileSwitch(
        value: _dPrivate,
        leading: _dPrivate ? IconList.OpenOn : IconList.OpenOff,
        onChanged: (value) {
          setState(() {
            _dPrivate = value;
          });
        },
        visualDensity: VisualDensity.comfortable,
        switchType: SwitchType.cupertino,
        switchActiveColor: Colors.indigo,
        title: _dPrivate
            ? FontMedium(title: '일기 공개', size: 18)
            : FontMedium(title: '일기 비공개', size: 18),
      ),
    );
  }

  // 그룹 선택 박스(임시)
  Widget _formGroupList() {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 8),
      child: FormBuilderDropdown(
        name: 'group',
        hint: FontMedium(title: '그룹을 선택해주세요', size: 18, color: Colors.black),
        items: testGroupData
            .map((g) => DropdownMenuItem(
                  child: FontMedium(
                    title: '$g',
                    size: 16,
                    color: Colors.black,
                  ),
                  value: g,
                ))
            .toList(),
      ),
    );
  }

  // 사진 Form Card
  Widget _diaryFormCard() {
    return Expanded(
      child: DiaryAddForm(
        diary: diaryList[0],
      ),
    );
  }

/*
  // 사진 Form Card
  Widget _diaryFormCard() {
    return Expanded(
      child: diaryList.length <= 0
          ? Center(
              child: FontMedium(
              title: '(+) 버튼을 누르면 최대\n10개까지 추가됩니다.',
              size: 24,
            ))
          : ListView.builder(
              itemCount: diaryList.length < 10 ? diaryList.length : 10,
              itemBuilder: (_, i) {
                return DiaryAddForm(
                  title: '사진 ${i + 1}',
                  diary: diaryList[i],
                  onDelete: () => _diaryFormDelete(i),
                  index: i,
                );
              },
            ),
    );
  }

  // 사진 Form Card 추가 버튼
  Widget _addButton() {
    return FloatingActionButton(
      backgroundColor: kMainColor,
      child: IconList.Add,
      onPressed: () {
        if (diaryList.length < 10) {
          setState(() {
            diaryList.add(Diary());
          });
        }
      },
    );
  }

  // 사진 Form Card 삭제 함수
  void _diaryFormDelete(int i) {
    setState(() {
      diaryList.removeAt(i);
    });
  }
*/
}
