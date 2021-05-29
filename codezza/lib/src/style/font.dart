import 'package:flutter/material.dart';

class FontBold extends StatelessWidget {
  final String title;
  final double size;

  FontBold({this.title, this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: size,
        fontFamily: 'NotoSansKR Bold',
      ),
    );
  }
}

class FontNormal extends StatelessWidget {
  final String title;
  final double size;

  const FontNormal({this.title, this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: size,
        fontFamily: 'NotoSansKR Regular',
      ),
    );
  }
}