import 'package:codezza/src/common/CommonModule.dart';
import 'package:codezza/src/models/entity.dart';
import 'package:codezza/src/screens/diary/MyDiary/MyDiaryCard.dart';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

Future<List<dynamic>>? getDiary() async {
  var params = {};
  var sqlParams = {"ins_id": await uid()};
  params['sqlParams'] = sqlParams;
  params['sqlType'] = "S";
  dynamic result = await postHttp("readDiary", params);
  if (result['success'] == true) {
    List<dynamic> returnList = result['returnObj']['list'];
    return returnList;
  } else {
    return [new Diary()];
  }
}

class MyDiaryList extends StatefulWidget {
  MyDiaryList({Key? key}) : super(key: key);

  @override
  _MyDiaryListState createState() => _MyDiaryListState();
}

class _MyDiaryListState extends State<MyDiaryList> {
  Future<List<dynamic>>? diary;

  @override
  void initState() {
    super.initState();
    diary = getDiary();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height; // 전체 화면 세로 사이즈
    return FutureBuilder<dynamic>(
      // Future 객체를 future 항목에 할당
      future: diary,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<dynamic> diary = snapshot.data ?? [];
          return Expanded(
            child: CarouselSlider.builder(
              options: CarouselOptions(
                height: h * 0.45,
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              itemCount: diary.length,
              itemBuilder: (context, index, index2) {
                if (index == 0) {
                  return Container();
                }
                return MyDiaryCard(diary: diary[index]);
              },
            ),
          );
        }
        // 에러 수신 시 에러 메시지 출력
        else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }

        return CircularProgressIndicator();
      },
    );
  }
}
