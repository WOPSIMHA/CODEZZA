// 아이콘 스타일
import 'package:codezza/src/components/style/color_style.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// 실제 개발할 때는 앞에 k 붙이기
class IconStyle extends StatelessWidget {
  final IconData icon;
  final double size;

  const IconStyle({
    Key key,
    this.icon,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: gray1,
    );
  }
}

class IconDataList {
  IconDataList._();

  static const IconStyle close_circle = IconStyle(
    icon: Ionicons.close_circle_outline,
    size: 28,
  );
  static const IconStyle information_circle = IconStyle(
    icon: Ionicons.information_circle_outline,
    size: 28,
  );
  static const IconStyle checkmark = IconStyle(
    icon: Ionicons.checkmark_circle_outline,
    size: 28,
  );
  static const IconStyle add = IconStyle(
    icon: Ionicons.add,
    size: 28,
  );
  static const IconStyle edit = IconStyle(
    icon: FontAwesomeIcons.edit,
    size: 24,
  );
  static const IconStyle passwrodOn = IconStyle(
    icon: Ionicons.lock_closed_outline,
    size: 28,
  );
  static const IconStyle passwrodOff = IconStyle(
    icon: Ionicons.lock_open_outline,
    size: 28,
  );
}
