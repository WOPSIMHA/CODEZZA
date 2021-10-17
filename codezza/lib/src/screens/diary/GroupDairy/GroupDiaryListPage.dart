import 'package:codezza/src/sample/sampledb.dart';
import 'package:codezza/src/screens/diary/GroupDairy/GroupDetailPage.dart';
import 'package:codezza/src/widgets/style.dart';
import 'package:codezza/src/models/entity.dart';

import 'package:flutter/material.dart';

// 그룹 일기 List
class GroupDiaryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: TestData.user1Group.length,
        itemBuilder: (context, index) =>
            GroupListTile(group: TestData.user1Group[index]),
      ),
    );
  }
}

class GroupListTile extends StatefulWidget {
  final Group? group;

  const GroupListTile({Key? key, this.group}) : super(key: key);

  @override
  _GroupListTileState createState() => _GroupListTileState();
}

class _GroupListTileState extends State<GroupListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/Profile/user.png'),
          radius: 25,
        ),
        title: FontMedium(
          title: '${widget.group!.gName}',
          size: 18,
        ),
        subtitle: FontMedium(
          title: '구성원',
          size: 14,
        ),
        // 날짜만 파싱하는 방법을 찾을 것!
        // trailing: FontMedium(
        //   title: '${widget.group!.uptDT}',
        //   size: 10,
        // ),
        onTap: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => GroupDetail(group: widget.group!),
            ),
            (Route<dynamic> route) => true,
          );
        },
      ),
    );
  }
}
