import 'package:flutter/material.dart';

// font Bold 스타일
class FontBold extends StatelessWidget {
  final String? title;
  final double? size;
  final Color? color;

  FontBold({this.title, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: 'GmarketSansBold',
      ),
    );
  }
}

// font Light 스타일
class FontLight extends StatelessWidget {
  final String? title;
  final double? size;
  final Color? color;

  const FontLight({this.title, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: 'GmarketSansLight',
      ),
    );
  }
}


// font Medium 스타일
class FontMedium extends StatelessWidget {
  final String? title;
  final double? size;
  final Color? color;

  const FontMedium({
    Key? key,
    this.title,
    this.size,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: 'GmarketSansMedium',
      ),
    );
  }
}
