import 'package:codezza/src/components/style/font_style.dart';
import 'package:codezza/src/components/style/icon_style.dart';
import 'package:flutter/material.dart';

class ComponentsIcon extends StatefulWidget {
  @override
  _ComponentsIconState createState() => _ComponentsIconState();
}

class _ComponentsIconState extends State<ComponentsIcon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FontStyleNormal(title: '아이콘', size: 24),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(60),
        children: [
          IconListBox(IconDataList.close_circle, 'close circle'),
          SizedBox(height: 10),
          IconListBox(IconDataList.information_circle, 'information circle'),
          SizedBox(height: 10),
          IconListBox(IconDataList.checkmark, 'checkmark'),
          SizedBox(height: 10),
          IconListBox(IconDataList.add, 'add'),
          SizedBox(height: 10),
          IconListBox(IconDataList.edit, 'edit'),
        ],
      ),
    );
  }
}

class IconListBox extends StatelessWidget {
  final String title;
  final Widget widget;

  IconListBox(this.widget, this.title);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FontStyleNormal(title: title, size: 20),
        widget,
      ],
    );
  }
}
