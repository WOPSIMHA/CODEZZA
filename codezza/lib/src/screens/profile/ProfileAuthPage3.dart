import '/src/screens/HomePage.dart';
import '../../widgets/PrimaryButton.dart';
import '../../widgets/style_font.dart';

import 'package:flutter/material.dart';

// 카테고리 => 각각에 데이터를 합쳐서 DB에 저장한 후 Home Page 로 이동
class ProfileAuthPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 168, left: 44, right: 44),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FontMedium(
                title: '카테고리',
                size: 20,
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "카테고리를 입력해주세요",
                    hintStyle: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: PrimaryButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => HomePage()),
                    );
                  },
                  title: '프로필 작성 완료',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
