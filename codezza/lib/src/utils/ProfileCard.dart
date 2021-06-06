import '/src/widgets/color.dart';
import '/src/widgets/font.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class ProfileCard extends StatefulWidget {
  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
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
      child: Container(
        color: kWhite1,
        height: 280,
        width: 324,
        child: Center(
          child: FontBold(title: '프로필 앞장', size: 36),
        ),
      ),
    );
  }

  // 카드 뒷
  Widget buildBackCard() {
    return Card(
      child: Container(
        color: kWhite1,
        height: 280,
        width: 324,
        child: Center(
          child: FontBold(title: '프로필 뒷장', size: 36),
        ),
      ),
    );
  }
}
