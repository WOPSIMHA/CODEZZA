import 'package:flutter/material.dart';

class FontBold extends StatelessWidget {
  final String title;
  final double? size;
  final Color? color;

  FontBold({required this.title, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: 'GmarketSansBold',
      ),
    );
  }
}

class FontLight extends StatelessWidget {
  final String title;
  final double? size;
  final Color? color;

  const FontLight({required this.title, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: 'GmarketSansLight',
      ),
    );
  }
}

class FontMedium extends StatelessWidget {
  final String title;
  final double? size;
  final Color? color;

  const FontMedium({
    required this.title,
    this.size,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: 'GmarketSansMedium',
      ),
    );
  }
}
