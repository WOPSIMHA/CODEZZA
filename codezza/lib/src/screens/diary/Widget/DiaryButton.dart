import 'package:codezza/src/widgets/style.dart';
import 'package:flutter/material.dart';

class DiaryButton extends StatelessWidget {
  final String title;
  final Widget? child;
  final VoidCallback onPressed;
  final Color backgroundColor;

  const DiaryButton({
    Key? key,
    required this.title,
    this.child,
    required this.onPressed,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: FontMedium(title: title, size: 16),
      style: TextButton.styleFrom(
        fixedSize: const Size(90, 36),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
