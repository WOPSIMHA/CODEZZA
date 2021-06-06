import '/src/widgets/style.dart';
import 'package:flutter/material.dart';

class SignUpNeutralButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Widget? child;

  const SignUpNeutralButton({
    Key? key,
    required this.onPressed,
    required this.title,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: FontMedium(title: title, size: 20),
      style: TextButton.styleFrom(
        primary: kGray1,
        backgroundColor: kWhite2,
        padding: EdgeInsets.only(bottom: 16, top: 16),
        minimumSize: Size(324, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        side: BorderSide(
          color: kGray1,
          width: 2.0,
        ),
      ),
    );
  }
}
