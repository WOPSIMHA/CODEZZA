import 'package:codezza/src/components/style/color_style.dart';
import 'package:codezza/src/components/style/font_style.dart';
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
      child: FontStyleBold(title: title, size: 20),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith(
          // ColorSytle.font[FontColor.main],
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
