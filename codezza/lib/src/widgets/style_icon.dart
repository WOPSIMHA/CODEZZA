import 'style_color.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// 아이콘 스타일
class IconStyle extends StatelessWidget {
  final IconData icon;
  final double size;

  const IconStyle({
    required this.icon,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: kGray2,
    );
  }
}

// 아이콘 List
class IconList {
  IconList._();

  // 원형이 있는 close(지우기) 아이콘
  static const IconStyle CloseCircle = IconStyle(
    icon: Ionicons.close_circle_outline,
    size: 20,
  );

  // 원형이 없는 close(지우기) 아이콘
  static const IconStyle Close = IconStyle(
    icon: Ionicons.close_outline,
    size: 28,
  );

  // 정보 아이콘
  static const IconStyle InformationCircle = IconStyle(
    icon: Ionicons.information_circle_outline,
    size: 28,
  );

  // 원형 check 아이콘
  static const IconStyle Checkmark = IconStyle(
    icon: Ionicons.checkmark_circle_outline,
    size: 28,
  );

  // 공개
  static const IconStyle OpenOn = IconStyle(
    icon: Icons.public_outlined,
    size: 28,
  );

  // 일부 공개
  static const IconStyle OpenPrivate = IconStyle(
    icon: Icons.link_outlined,
    size: 28,
  );

  // 비공개
  static const IconStyle OpenOff = IconStyle(
    icon: Icons.public_off_outlined,
    size: 28,
  );

  // 추가 아이콘
  static const IconStyle Back = IconStyle(
    icon: Ionicons.arrow_back_outline,
    size: 28,
  );

  // 추가 아이콘
  static const IconStyle Add = IconStyle(
    icon: Ionicons.add,
    size: 28,
  );

  // 수정 아이콘
  static const IconStyle Edit = IconStyle(
    icon: FontAwesomeIcons.edit,
    size: 32,
  );

  // 비밀번호 비공개 아이콘
  static const IconStyle PassWordOn = IconStyle(
    icon: Ionicons.lock_closed_outline,
    size: 24,
  );

  // 비밀번호 공개 아이콘
  static const IconStyle PassWordOff = IconStyle(
    icon: Ionicons.lock_open_outline,
    size: 24,
  );
}
