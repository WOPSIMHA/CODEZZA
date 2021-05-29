import 'package:codezza/src/style/color.dart';
import 'package:codezza/src/style/font.dart';
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
      child: FontBold(title: title, size: 20),
      style: TextButton.styleFrom(
        primary: kGray1,
        backgroundColor: kWhite2,
        padding: EdgeInsets.only(bottom: 13, top: 13),
        minimumSize: Size(286, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        side: BorderSide(
          color: kGray1,
          width: 2.0,
        ),
      ),
    );
  }
}
