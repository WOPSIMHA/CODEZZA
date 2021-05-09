// 폰트 스타일 (size, color, family, weight 등등)

import 'package:flutter/material.dart';

class FontStyleBold extends StatelessWidget {
  final String title;
  final double size;

  FontStyleBold({this.title, this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: size,
        fontFamily: 'NotoSansKR Bold',
      ),
    );
  }
}

class FontStyleNormal extends StatelessWidget {
  final String title;
  final double size;

  FontStyleNormal({this.title, this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: size,
        fontFamily: 'NotoSansKR Regular',
      ),
    );
  }
}

// NotoSansKR Bold
final kNotoSansKRBold16 = const TextStyle(
  fontSize: 16,
  fontFamily: 'NotoSansKR Bold',
);
final kNotoSansKRBold24 = const TextStyle(
  fontSize: 24,
  fontFamily: 'NotoSansKR Bold',
);
final kNotoSansKRBold36 = const TextStyle(
  fontSize: 36,
  fontFamily: 'NotoSansKR Bold',
);
final kNotoSansKRBold48 = const TextStyle(
  fontSize: 48,
  fontFamily: 'NotoSansKR Bold',
);
final kNotoSansKRBold54 = const TextStyle(
  fontSize: 54,
  fontFamily: 'NotoSansKR Bold',
);

// NotoSansKR Regular
final kNotoSansKRRegular16 = const TextStyle(
  fontSize: 16,
  fontFamily: 'NotoSansKR Regular',
);
final kNotoSansKRRegular24 = const TextStyle(
  fontSize: 24,
  fontFamily: 'NotoSansKR Regular',
);
final kNotoSansKRRegular36 = const TextStyle(
  fontSize: 36,
  fontFamily: 'NotoSansKR Regular',
);
final kNotoSansKRRegular48 = const TextStyle(
  fontSize: 48,
  fontFamily: 'NotoSansKR Regular',
);
final kNotoSansKRRegular54 = const TextStyle(
  fontSize: 54,
  fontFamily: 'NotoSansKR Regular',
);
