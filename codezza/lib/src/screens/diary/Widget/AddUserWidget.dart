import 'dart:math';
import 'package:codezza/src/models/entity.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

typedef OnDelete();

// 사용자 목록 리스트
class AddUserWidget extends StatefulWidget {
  // final List<User?>? userList;
  final List<dynamic>? userList;
  final state = _AddUserWidgetState();
  // final OnDelete? onDelete;

  AddUserWidget({Key? key, this.userList}) : super(key: key);

  @override
  _AddUserWidgetState createState() => _AddUserWidgetState();
}

class _AddUserWidgetState extends State<AddUserWidget> {
  final form = GlobalKey<FormState>();
  final ColorList = [
    Colors.orange,
    Colors.amber,
    Colors.orange[100],
    Colors.greenAccent,
    Colors.teal,
    Colors.teal[300],
    Colors.lightGreen,
    Colors.lime
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.userList!.length,
      itemBuilder: (_, i) {
        return SimpleDialogOption(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.account_circle,
                  size: 36.0,
                  color: ColorList[Random().nextInt(ColorList.length)]),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 16.0),
                child: Text(widget.userList![i]['u_id'].toString()),
              ),
            ],
          ),
        );
      },
    );
  }
}
