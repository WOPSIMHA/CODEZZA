import '/src/sample/sampledb.dart';
import '/src/widgets/style.dart';
import '/src/models/entity.dart';
import 'GroupDetailPage.dart';

import 'package:flutter/material.dart';

// 그룹 일기 List
class GroupDiaryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: TestData.user1Group.length,
        itemBuilder: (context, index) => GroupListTile(group: TestData.user1Group[index]),
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
