import 'dart:io';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';

import '/src/models/entity.dart';
import '/src/widgets/style.dart';

typedef OnDelete();

// 사진 추가 폼
class AddUserWidget extends StatefulWidget {
  // final User? user;
  final index;
  final state = _AddUserWidgetState();
  // final OnDelete? onDelete;

  AddUserWidget({Key? key, this.index
      // this.user,
      // this.onDelete,
      })
      : super(key: key);

  @override
  _AddUserWidgetState createState() => state;
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
    return buildBody();
  }

  // body
  Widget buildBody() {
    return SimpleDialogOption(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.account_circle,
              size: 36.0, color: ColorList[Random().nextInt(ColorList.length)]),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16.0),
            child: Text("user@gmail.com"),
          ),
        ],
      ),
    );
  }
}
