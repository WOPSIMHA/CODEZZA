import '/src/widgets/style.dart';
import 'package:flutter/material.dart';

class ProfileEdit extends StatefulWidget {
  @override
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  // appbar
  _buildAppBar() {
    const double topBottom = 16.0;

    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: kWhite2,
      elevation: 0,
      toolbarHeight: 75,
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            top: topBottom,
            bottom: topBottom,
            right: 16.0,
          ),
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: FontMedium(
              title: '취소',
              size: 16,
              color: kGray1,
            ),
            style: TextButton.styleFrom(
              backgroundColor: kWhite2,
              side: BorderSide(color: kGray1),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: topBottom, bottom: topBottom, right: 16.0),
          child: TextButton(
            onPressed: () {},
            child: FontMedium(
              title: '등록',
              size: 16,
              color: kGray1,
            ),
            style: TextButton.styleFrom(
              backgroundColor: kMainColor,
            ),
          ),
        ),
      ],
    );
  }

  // body
  _buildBody() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          profileCard(),
          profileTextFiled(),
        ],
      ),
    );
  }

  // 프로필 카드
  Widget profileCard() {
    return Container(
      padding: const EdgeInsets.only(top: 24.0),
      color: kWhite2,
      height: 300,
      width: 342,
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                profileImage(),
              ],
            ),
            profileNameTextFiled()
          ],
        ),
      ),
    );
  }

  // 프로필 사진
  Widget profileImage() {
    return Stack(
      children: [
        Container(
          height: 140,
          width: 140,
          //margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/Profile/user.png'),
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: kGreen2,
              width: 4.0,
            ),
          ),
        ),
      ],
    );
  }

  // 프로필 닉네임 TextFiled
  Widget profileNameTextFiled() {
    const rightLeft = 24.0;
    const topBottom = 16.0;

    return Container(
      margin: const EdgeInsets.only(
          right: rightLeft,
          left: rightLeft,
          top: topBottom / 2,
          bottom: topBottom),
      child: TextField(
        decoration: InputDecoration(
          hintText: '닉네임',
        ),
      ),
    );
  }

  // 프로필 자기소개 TextFiled
  Widget profileTextFiled() {
    const leftRight = 32.0;
    const topBottom = 16.0;
    const maxLines = 12;

    return Padding(
      padding: const EdgeInsets.only(right: leftRight, left: leftRight, top: topBottom, bottom: topBottom),
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          height: maxLines * 28,
          child: TextField(
            maxLines: maxLines,
            decoration: InputDecoration(
              hintText: '자기소개',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kWhite4, width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kWhite4, width: 2.0),
              ),
            ),
          ),
        ),
      ),
    );
  }

}
