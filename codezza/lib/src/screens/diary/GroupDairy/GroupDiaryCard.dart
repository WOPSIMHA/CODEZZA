import '/src/widgets/style.dart';
import '/src/models/entity.dart';

import 'package:flutter/material.dart';

// 그룹 일기 카드
class GroupDiaryCard extends StatefulWidget {
  final Diary? diary;
  final String? name;
  // final User? user;

  const GroupDiaryCard({Key? key, this.diary, this.name}) : super(key: key);

  @override
  _GroupDiaryCardState createState() => _GroupDiaryCardState();
}

class _GroupDiaryCardState extends State<GroupDiaryCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 14, right: 14, bottom: 16),
      child: Container(
        width: 240,
        height: 348,
        child: groupCard(),
      ),
    );
  }

  // group card
  Widget groupCard() {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/Profile/user.png'),
                  radius: 20,
                ),
                SizedBox(width: 10),
                FontMedium(
                  title: '${widget.name!}',
                  size: 20,
                ),
              ],
            ),
            SizedBox(height: 10),
            Hero(
              tag: '${widget.diary!.dSEQ}',
              child: GestureDetector(
                // onTap: () => Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (BuildContext context) {
                //       return DiaryDetail(diary: widget.diary!);
                //     },
                //   ),
                // ),
                child: Image.network(
                  '${widget.diary!.dThumbnail}',
                  width: 300,
                  height: 200,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 10),
            FontMedium(
              title: '${widget.diary!.dTitle}',
              size: 24,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
