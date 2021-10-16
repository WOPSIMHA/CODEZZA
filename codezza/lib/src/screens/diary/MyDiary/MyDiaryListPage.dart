import '/src/sample/sampledb.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'MyDiaryCard.dart';

// 개인일기 List
class MyDiaryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height; // 전체 화면 세로 사이즈
    return Expanded(
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: h * 0.45,
          enableInfiniteScroll: false,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
        ),
        itemCount: TestData.user1Dairy.length,
        itemBuilder: (context, index, index2) =>
            MyDiaryCard(diary: TestData.user1Dairy[index]),
      ),
    );
  }
}
