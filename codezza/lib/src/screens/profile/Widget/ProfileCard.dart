import '/src/widgets/style.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

// 프로필 카드
class ProfileCard extends StatefulWidget {
  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: buildBody(),
    );
  }

  // Body
  Widget buildBody() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: FlipCard(
        direction: FlipDirection.HORIZONTAL,
        front: buildFrontCard(),
        back: buildBackCard(),
      ),
    );
  }

  // 카드 앞
  Widget buildFrontCard() {
    return Card(
      elevation: 15,
      child: Container(
        color: kWhite1,
        height: 240,
        width: 324,
        child: Center(
          child: FontBold(title: '프로필 앞장', size: 36),
        ),
      ),
    );
  }

  // 프로필 사진
  Widget buildProfileImage() {
    return Stack();
  }

  // 카드 뒷
  Widget buildBackCard() {
    return Card(
      elevation: 15,
      child: Container(
        color: kWhite1,
        height: 240,
        width: 324,
        child: Center(
          child: FontBold(title: '프로필 뒷장', size: 36),
        ),
      ),
    );
  }

}
