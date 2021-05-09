// 일기장 탭 버튼
import 'package:flutter/material.dart';
import 'package:animated_button_bar/animated_button_bar.dart';

class ProfileTabbar extends StatefulWidget {
  ProfileTabbar({Key key}) : super(key: key);

  @override
  _ProfileTabbarState createState() => _ProfileTabbarState();
}

class _ProfileTabbarState extends State<ProfileTabbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 300,
            height: 200,
            margin: EdgeInsets.all(20),
            color: Colors.yellow,
          ),
          AnimatedButtonBar(
            radius: 32.0,
            padding: const EdgeInsets.all(16.0),
            // backgroundColor: Colors.blueGrey.shade800,
            foregroundColor: Colors.blueGrey.shade300,
            elevation: 24,
            borderColor: Colors.white,
            borderWidth: 2,
            innerVerticalPadding: 16,
            children: [
              ButtonBarEntry(
                onTap: () => print('First item tapped'),
                child: Text('개인일기'),
              ),
              ButtonBarEntry(
                onTap: () => print('Second item tapped'),
                child: Text('그룹일기'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
