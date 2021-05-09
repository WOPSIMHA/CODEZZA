import 'package:codezza/src/components/style/color_style.dart';
import 'package:codezza/src/components/style/font_style.dart';
import 'package:flutter/material.dart';

class SignUpCheckButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Widget child;

  const SignUpCheckButton({
    Key key,
    @required this.onPressed,
    this.child,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: FontStyleBold(title: title, size: 16),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return gray2;
            } else {
              return white2;
            }
          },
        ),
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return white3;
            } else {
              return green2;
            }
          },
        ),
        padding: MaterialStateProperty.all(
          EdgeInsets.only(bottom: 8, top: 8),
        ),
        minimumSize: MaterialStateProperty.all(Size(80, 38)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}
