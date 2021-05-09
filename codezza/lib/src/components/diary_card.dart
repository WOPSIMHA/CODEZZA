// 폴라로이드 카드
import 'package:codezza/src/components/style/color_style.dart';
import 'package:codezza/src/components/style/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class DiaryCard extends StatefulWidget {
  @override
  _DiaryCardState createState() => _DiaryCardState();
}

class _DiaryCardState extends State<DiaryCard> with TickerProviderStateMixin {
  List<String> tinderImages = [
    'assets/images/dog1.png',
    'assets/images/dog2.png',
    'assets/images/dog3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('폴라로이드 카드1'),
      ),
      body: body(),
    );
  }

  Widget body() {
    return ListView(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Swiper(
                itemCount: tinderImages.length,
                itemBuilder: (BuildContext context, int index) => Card(
                  color: white3,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      '${tinderImages[index]}',
                      fit: BoxFit.fill,
                    ),
                  ),
                  elevation: 6.0,
                ),
                viewportFraction: 0.8,
                scale: 0.9,
                layout: SwiperLayout.STACK,
                itemWidth: 300.0,
                itemHeight: 360.0,
              ),
            ),
            Positioned(
              top: 6,
              right: 80,
              child: Container(
                alignment: Alignment.center,
                // color: Colors.yellow,
                child: Image.asset(
                  'assets/images/hand-made.png',
                  fit: BoxFit.fill,
                  height: 36,
                ),
              ),
            ),
          ],
        ),
        Center(
          child: FontStyleNormal(
            title: '처음 찍은 강아지 👍 Love',
            size: 20,
          ),
        )
      ],
    );
  }
}

class DiaryCard2 extends StatefulWidget {
  @override
  _DiaryCard2State createState() => _DiaryCard2State();
}

class _DiaryCard2State extends State<DiaryCard2> {
  List<String> tinderImages = [
    'assets/images/dog1.png',
    'assets/images/dog2.png',
    'assets/images/dog3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('폴라로이드 카드2'),
      ),
      body: body(),
    );
  }

  Widget body() {
    return ListView(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Swiper(
                itemCount: tinderImages.length,
                itemBuilder: (BuildContext context, int index) => Card(
                  color: white3,
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: 60,
                      top: 20,
                      right: 20,
                      left: 20,
                    ),
                    child: Image.asset(
                      '${tinderImages[index]}',
                      fit: BoxFit.fill,
                    ),
                  ),
                  elevation: 6.0,
                ),
                viewportFraction: 0.8,
                scale: 0.9,
                layout: SwiperLayout.TINDER,
                itemWidth: 400.0,
                itemHeight: 400.0,
              ),
            ),
            Positioned(
              top: 16,
              right: 140,
              child: Container(
                alignment: Alignment.center,
                // color: Colors.yellow,
                child: Image.asset(
                  'assets/images/tack.png',
                  fit: BoxFit.fill,
                  height: 60,
                ),
              ),
            ),
          ],
        ),
        Center(
          child: FontStyleNormal(
            title: '처음 찍은 강아지 👍 Love',
            size: 20,
          ),
        )
      ],
    );
  }
}

class DiaryCard3 extends StatefulWidget {
  @override
  _DiaryCard3State createState() => _DiaryCard3State();
}

class _DiaryCard3State extends State<DiaryCard3> {
  List<String> tinderImages = [
    'assets/images/dog1.png',
    'assets/images/dog2.png',
    'assets/images/dog3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('폴라로이드 카드3')),
      body: body(),
    );
  }

  Widget body() {
    return ListView(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.all(36),
              child: Swiper(
                itemCount: tinderImages.length,
                itemBuilder: (BuildContext context, int index) => Card(
                  color: white3,
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: 60,
                      top: 15,
                      right: 15,
                      left: 15,
                    ),
                    child: Image.asset(
                      '${tinderImages[index]}',
                      fit: BoxFit.fill,
                    ),
                  ),
                  elevation: 6.0,
                ),
                viewportFraction: 0.8,
                scale: 0.9,
                layout: SwiperLayout.STACK,
                itemWidth: 240.0,
                itemHeight: 400.0,
              ),
            ),
            Positioned(
              top: 20,
              right: 90,
              child: Container(
                alignment: Alignment.center,
                // color: Colors.yellow,
                child: Image.asset(
                  'assets/images/hand-made.png',
                  fit: BoxFit.fill,
                  height: 32,
                ),
              ),
            ),
          ],
        ),
        Center(
          child: FontStyleNormal(
            title: '처음 찍은 강아지 👍 Love',
            size: 20,
          ),
        )
      ],
    );
  }
}

class DiaryCard4 extends StatefulWidget {
  @override
  _DiaryCard4State createState() => _DiaryCard4State();
}

class _DiaryCard4State extends State<DiaryCard4> {
  List<String> tinderImages = [
    'assets/images/dog1.png',
    'assets/images/dog2.png',
    'assets/images/dog3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('폴라로이드 카드4')),
      body: body(),
    );
  }

  Widget body() {
    return ListView(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Swiper(
                itemCount: tinderImages.length,
                itemBuilder: (BuildContext context, int index) => Card(
                  color: white3,
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: 60,
                      top: 60,
                      right: 15,
                      left: 15,
                    ),
                    child: Image.asset(
                      '${tinderImages[index]}',
                      fit: BoxFit.fill,
                    ),
                  ),
                  elevation: 6.0,
                ),
                viewportFraction: 0.8,
                scale: 0.9,
                layout: SwiperLayout.STACK,
                itemWidth: 240.0,
                itemHeight: 400.0,
              ),
            ),
            Positioned(
              top: 15,
              right: 130,
              child: Container(
                alignment: Alignment.center,
                // color: Colors.yellow,
                child: Image.asset(
                  'assets/images/tack.png',
                  fit: BoxFit.fill,
                  height: 70,
                ),
              ),
            ),
          ],
        ),
        Center(
          child: FontStyleNormal(
            title: '처음 찍은 강아지 👍',
            size: 20,
          ),
        )
      ],
    );
  }
}
