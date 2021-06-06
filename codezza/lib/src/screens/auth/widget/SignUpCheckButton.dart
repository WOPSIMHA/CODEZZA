import '/src/widgets/style.dart';
import 'package:flutter/material.dart';

class SignUpCheckButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Widget? child;

  const SignUpCheckButton({
    Key? key,
    required this.onPressed,
    this.child,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: FontMedium(title: title, size: 16),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith(
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