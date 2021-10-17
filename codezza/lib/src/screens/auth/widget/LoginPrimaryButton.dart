import 'package:codezza/src/widgets/style.dart';
import 'package:flutter/material.dart';

// 로그인 버튼 스타일
class LoginPrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Widget? child;

  const LoginPrimaryButton({
    Key? key,
    required this.onPressed,
    required this.title,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: FontMedium(
        title: title,
        size: 20,
      ),
      style: TextButton.styleFrom(
        primary: kGray1,
        backgroundColor: kMainColor,
        onSurface: kGray2,
        padding: EdgeInsets.only(bottom: 16, top: 16),
        minimumSize: Size(324, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
