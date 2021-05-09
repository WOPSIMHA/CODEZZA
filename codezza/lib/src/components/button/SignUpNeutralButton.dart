import 'package:codezza/src/components/style/color_style.dart';
import 'package:codezza/src/components/style/font_style.dart';
import 'package:flutter/material.dart';

class SignUpNeutralButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Widget child;

  const SignUpNeutralButton({
    Key key,
    @required this.onPressed,
    this.title,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: FontStyleBold(title: title, size: 20),
      style: TextButton.styleFrom(
        primary: gray1,
        backgroundColor: white2,
        padding: EdgeInsets.only(bottom: 13, top: 13),
        minimumSize: Size(286, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        side: BorderSide(
          color: gray1,
          width: 2.0,
        ),
      ),
    );
  }
}
