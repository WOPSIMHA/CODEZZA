import 'package:flutter/material.dart';

// font Bold 스타일
class FontBold extends StatelessWidget {
  final String? title;
  final double? size;
  final int? maxLines;
  final Color? color;
  final TextOverflow? overflow;

  FontBold({
    this.title,
    this.size,
    this.color,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: 'GmarketSansBold',
      ),
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}

// font Light 스타일
class FontLight extends StatelessWidget {
  final String? title;
  final double? size;
  final int? maxLines;
  final Color? color;
  final TextOverflow? overflow;

  const FontLight({
    this.title,
    this.size,
    this.color,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: 'GmarketSansLight',
      ),
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}

// font Medium 스타일
class FontMedium extends StatelessWidget {
  final String? title;
  final double? size;
  final int? maxLines;
  final Color? color;
  final TextOverflow? overflow;

  const FontMedium({
    Key? key,
    this.title,
    this.size,
    this.color,
    this.overflow,
    this.maxLines,
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
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
