import 'dart:io';

import 'package:codezza/src/common/CommonModule.dart';
import 'package:codezza/src/screens/home/HomePage.dart';
import 'package:image_picker/image_picker.dart';

import 'package:codezza/src/models/entity.dart';
import 'package:codezza/src/screens/diary/diaryAdd/DiaryAddForm.dart';
import 'package:codezza/src/widgets/style.dart';

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
  List<String> testGroupData = ['그룹1', '그룹2', '그룹3', '그룹4']; // test 그룹 데이터
  List<String> testGroupSeqData = ['100', '101', '102', '103']; // test 그룹 데이터
  final title = TextEditingController(); // 제목
  final text = TextEditingController(); // 내용
  String dPublic = "N"; // 공개여부 N => 비공개(default), Y => 공개
  String dDiaryType = "P"; // 타입 P => 개인일기(default), G => 그룹일기
  PickedFile? img; // 사진

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
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          backgroundColor: kWhite2,
          elevation: 0,
          toolbarHeight: 65,
          actions: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextButton(
                onPressed: () async {
                  if (img?.path == null) {
                    textAlertDialog(context, "일기 사진을 추가해 주세요!");
                    return;
                  }

                  dynamic fileResult = await fileUpload(File(img!.path));
                  if (fileResult['success'] == false) {
                    textAlertDialog(context, "오류가 발생했습니다\n다시 시도해 주세요!");
                    return;
                  }

                  var params = {};
                  var sqlParams = {
                    "dTitle": title.text,
                    "dText": text.text,
                    "dThumbnail": fileResult['fileName'],
                    "dPublic": (dDiaryType == "P") ? dPublic : "Y",
                    "dDiaryType": dDiaryType,
                    "dGSeq": (dDiaryType == "P") ? null : 100,
                    "sessionUId": await uid(),
                  };
                  // if(){
                  // sqlParams['dSeq'] = 100;
                  // }
                  params['sqlParams'] = sqlParams;
                  params['sqlType'] = "I";

                  dynamic result = await postHttp("writeDiary", params);
                  if (result['success'] == false) {
                    textAlertDialog(context, "오류가 발생했습니다\n다시 시도해 주세요!");
                    return;
                  } else {
                    textAlertDialog(context, "일기가 등록되었습니다!");
                    title.dispose();
                    text.dispose();
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => HomePage(),
                      ),
                      (route) => false,
                    );
                  }
                },
                child: FontMedium(
                  title: '작성',
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
    return ListView(
      children: [
        diaryTitle(),
        diaryTypeTab(),
        (dDiaryType == "P") ? dPublicSwitch() : formGroupList(),
        diaryFormCard(),
      ],
    );
  }

  // 일기장 선택 Tab
  Widget diaryTypeTab() {
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
          children: [diaryType("P", "개인일기"), diaryType("G", "그룹일기")],
        ),
      ),
    );
  }

  // 일기 타입 Tab
  Widget diaryType(String diaryType, String diaryTypeText) {
    return Expanded(
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
            color: (dDiaryType == diaryType) ? kMainColor : kWhite2,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(6),
              bottomLeft: Radius.circular(6),
            ),
          ),
          child: Center(
            child: FontMedium(
              title: diaryTypeText,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
        onTap: () {
          setState(() {
            dDiaryType = diaryType; // Tab 전환
          });
        },
      ),
    );
  }

  // 제목
  Widget diaryTitle() {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 8, bottom: 8),
      child: TextFormField(
          controller: title,
          decoration: InputDecoration(
            hintText: '일기의 제목을 지어 주세요!',
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontFamily: 'GmarketSansMedium',
            ),
          ),
          onChanged: (text) {
            setState(() {});
          }),
    );
  }

  // 개인일기 공개여부 Switch
  Widget dPublicSwitch() {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
      child: ListTileSwitch(
        value: (dPublic == "N") ? false : true,
        leading: (dPublic == "N") ? IconList.OpenOff : IconList.OpenOn,
        onChanged: (value) {
          setState(() {
            (value == true) ? dPublic = "Y" : dPublic = "N";
          });
        },
        visualDensity: VisualDensity.comfortable,
        switchType: SwitchType.cupertino,
        switchActiveColor: Colors.indigo,
        title: (dPublic == "N")
            ? FontMedium(title: '일기 비공개', size: 18)
            : FontMedium(title: '일기 공개', size: 18),
      ),
    );
  }

  // 그룹 선택(임시)
  Widget formGroupList() {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 8),
      child: FormBuilderDropdown(
        name: 'group',
        hint: FontMedium(
            title: '일기를 공유할 그룹을 선택해 주세요', size: 15, color: Colors.grey),
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

  // 일기 content
  Widget diaryFormCard() {
    return Expanded(
      child: DiaryAddForm(
        diary: diaryList[0],
        textController: text,
        setImgFile: (imgFile) => setState(() => img = imgFile),
      ),
    );
  }
}
