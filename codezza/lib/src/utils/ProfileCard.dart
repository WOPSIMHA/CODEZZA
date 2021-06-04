import 'package:codezza/src/widgets/color.dart';
import 'package:codezza/src/widgets/font.dart';
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
        front: Card(
          child: Container(
            color: kWhite1,
            height: 280,
            width: 324,
            child: Center(
              child: FontBold(title: '앞뒤가 똑같은\n전화번호\n1577-1577', size: 36),
            ),
          ),
        ),
        back: Card(
          child: Container(
            color: kWhite1,
            height: 280,
            width: 324,
            child: Center(
              child: FontBold(title: '이것은 프로필 입니다.', size: 30),
            ),
          ),
        ),
      ),
    );
  }
}
