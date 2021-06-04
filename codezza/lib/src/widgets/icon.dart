import 'color.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      color: kGray2,
    );
  }
}

class IconDataList {
  IconDataList._();

  static const IconStyle kCloseCircle = IconStyle(
    icon: Ionicons.close_circle_outline,
    size: 20,
  );
  static const IconStyle kInformationCircle = IconStyle(
    icon: Ionicons.information_circle_outline,
    size: 28,
  );
  static const IconStyle kCheckmark = IconStyle(
    icon: Ionicons.checkmark_circle_outline,
    size: 28,
  );
  static const IconStyle kAdd = IconStyle(
    icon: Ionicons.add,
    size: 28,
  );
  static const IconStyle kEdit = IconStyle(
    icon: FontAwesomeIcons.edit,
    size: 24,
  );
  static const IconStyle kPassWordOn = IconStyle(
    icon: Ionicons.lock_closed_outline,
    size: 28,
  );
  static const IconStyle kPassWordOff = IconStyle(
    icon: Ionicons.lock_open_outline,
    size: 28,
  );
}

// class IconDataList2 {
//   IconDataList2._();
//
//   static const IconStyle CloseCircle = IconStyle(
//     icon: Ionicons.close_circle_outline,
//     size: 28,
//   );
//   static const IconStyle InformationCircle = IconStyle(
//     icon: Ionicons.information_circle_outline,
//     size: 28,
//   );
//   static const IconStyle Checkmark = IconStyle(
//     icon: Ionicons.checkmark_circle_outline,
//     size: 28,
//   );
//   static const IconStyle Add = IconStyle(
//     icon: Ionicons.add,
//     size: 28,
//   );
//   static const IconStyle Edit = IconStyle(
//     icon: FontAwesomeIcons.edit,
//     size: 24,
//   );
//   static const IconStyle PassWordOn = IconStyle(
//     icon: Ionicons.lock_closed_outline,
//     size: 28,
//   );
//   static const IconStyle PassWordOff = IconStyle(
//     icon: Ionicons.lock_open_outline,
//     size: 28,
//   );
// }