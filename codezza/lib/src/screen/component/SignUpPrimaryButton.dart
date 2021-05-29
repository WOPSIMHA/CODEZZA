import 'package:codezza/src/style/color.dart';
import 'package:codezza/src/style/font.dart';
import 'package:flutter/material.dart';

class SingUpPrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final String title;

  const SingUpPrimaryButton({
    Key key,
    this.title,
    @required this.onPressed,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: FontBold(title: title, size: 20),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith(
          // ColorSytle.font[FontColor.main],
              (states) {
            if (states.contains(MaterialState.disabled)) {
              return kGray2;
            } else {
              return kWhite2;
            }
          },
        ),
        backgroundColor: MaterialStateProperty.resolveWith(
              (states) {
            if (states.contains(MaterialState.disabled)) {
              return kWhite3;
            } else {
              return kGreen2;
            }
          },
        ),
        padding: MaterialStateProperty.all(
          EdgeInsets.only(bottom: 13, top: 13),
        ),
        minimumSize: MaterialStateProperty.all(Size(286, 48)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}