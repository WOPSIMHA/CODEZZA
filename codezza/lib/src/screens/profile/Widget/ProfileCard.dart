import 'package:codezza/src/common/CommonModule.dart';

import '/src/models/entity.dart';
import '/src/widgets/style.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

// 프로필 카드
class ProfileCard extends StatefulWidget {
  final User? user;

  const ProfileCard({Key? key, this.user}) : super(key: key);

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
    return Container(
      color: kWhite2,
      height: 240,
      width: 324,
      child: Card(
        elevation: 16,
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
                _profileImage(),
              ],
            ),
            FontBold(
              size: 20,
              // title: (await uname()).toString()
              title: '${widget.user!.uName}',
            ),
          ],
        ),
      ),
    );
  }

  // 프로필 사진
  Widget _profileImage() {
    return Stack(
      children: [
        Container(
          height: 120,
          width: 120,
          margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/Profile/user.png'),
          ),
          // decoration: BoxDecoration(
          //   shape: BoxShape.circle,
          //   border: Border.all(
          //     color: kGreen2,
          //     width: 4.0,
          //   ),
          // ),
        ),
      ],
    );
  }

  // 카드 뒷
  Widget buildBackCard() {
    return Container(
      color: kWhite2,
      height: 240,
      width: 324,
      child: Card(
        elevation: 16,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: FontMedium(
                    title: '${widget.user!.uComment}',
                    size: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
