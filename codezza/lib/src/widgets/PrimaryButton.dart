import 'package:codezza/src/widgets/style.dart';
import 'package:flutter/material.dart';

// 다음 버튼 스타일
class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget? child;
  final String title;

  const PrimaryButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: FontMedium(title: title, size: 20),
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
          EdgeInsets.only(bottom: 13, top: 13),
        ),
        minimumSize: MaterialStateProperty.all(Size(324, 48)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}
