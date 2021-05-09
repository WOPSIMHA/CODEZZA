import 'package:codezza/src/components/diary_card.dart';
import 'package:codezza/src/components/style/font_style.dart';
import 'package:codezza/src/screens/components/components_button.dart';
import 'package:codezza/src/screens/components/components_icon.dart';
import 'package:codezza/src/screens/components/components_text.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: FontStyleNormal(title: 'Componets List', size: 24),
          centerTitle: true,
        ),
        body: Center(
          child: ListView(
            padding: EdgeInsets.all(40.0),
            children: [
              NextButton(
                color: Colors.greenAccent[100],
                title: '텍스트 Bold',
                widget: ComponentsTextBold(),
              ),
              SizedBox(height: 30),
              NextButton(
                color: Colors.greenAccent[100],
                title: '텍스트 Normal',
                widget: ComponentsTextNormal(),
              ),
              SizedBox(height: 30),
              NextButton(
                color: Colors.tealAccent[100],
                title: '아이콘',
                widget: ComponentsIcon(),
              ),
              SizedBox(height: 30),
              NextButton(
                color: Colors.cyan[100],
                title: '버튼',
                widget: ComponentsButton(),
              ),
              SizedBox(height: 30),
              NextButton(
                color: Colors.cyan[100],
                title: '폴라로이드 카드1',
                widget: DiaryCard(),
              ),
              SizedBox(height: 30),
              NextButton(
                color: Colors.cyan[100],
                title: '폴라로이드 카드2',
                widget: DiaryCard2(),
              ),
              SizedBox(height: 30),
              NextButton(
                color: Colors.cyan[100],
                title: '폴라로이드 카드3',
                widget: DiaryCard3(),
              ),
              SizedBox(height: 30),
              NextButton(
                color: Colors.cyan[100],
                title: '폴라로이드 카드4',
                widget: DiaryCard4(),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class NextButton extends StatelessWidget {
  final Widget widget;
  final Color color;
  final String title;

  const NextButton({
    Key key,
    this.widget,
    this.color,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => widget,
          ),
        );
      },
      child: FontStyleNormal(title: title, size: 24),
    );
  }
}
