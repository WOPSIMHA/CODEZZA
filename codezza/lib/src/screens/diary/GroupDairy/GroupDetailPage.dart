import '/src/sample/sampledb.dart';
import '/src/widgets/style.dart';
import '/src/models/entity.dart';
import 'GroupDiaryCard.dart';
import 'package:flutter/material.dart';

class GroupDetail extends StatelessWidget {
  final Group? group;

  const GroupDetail({
    Key? key,
    this.group,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height; // 전체 화면 세로 사이즈
    return SafeArea(
      right: false,
      left: false,
      child: Scaffold(
        backgroundColor: const Color(0xFF9DCDB8),
        appBar: appBar(context),
        body: Container(
          height: h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background_group.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: TestData.groupDariy.length,
            itemBuilder: (context, index) => GroupDiaryCard(
              diary: TestData.groupDariy[index],
              name: TestData.users[index].uName,
            ),
          ),
        ),
      ),
    );
  }

  // appbar
  appBar(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: kWhite2,
      title: FontMedium(
        title: '${group!.gName}',
        color: kGray2,
        size: 20,
      ),
      actions: [
        Theme(
          data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(color: Colors.black),
          ),
          child: PopupMenuButton(
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem(child: Text('방제목 수정')),
              PopupMenuItem(child: Text('방 나가기')),
              PopupMenuItem(child: Text('초대하기')),
            ],
          ),
        ),
      ],
    );
  }
}
