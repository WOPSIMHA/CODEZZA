import 'package:flutter/material.dart';

import 'MyDiaryDetailPage.dart';
import '/src/widgets/style.dart';
import '/src/models/entity.dart';

// 개인 일기 카드
class MyDiaryCard extends StatefulWidget {
  final Diary? diary;

  const MyDiaryCard({Key? key, this.diary}) : super(key: key);

  @override
  _MyDiaryCardState createState() => _MyDiaryCardState();
}

class _MyDiaryCardState extends State<MyDiaryCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 14, right: 14, bottom: 16),
      child: Container(
        width: 240,
        height: 300,
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Hero(
                  tag: '${widget.diary!.dSEQ}',
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return DiaryDetail(diary: widget.diary!);
                        },
                      ),
                    ),
                    child: Image.network(
                      '${widget.diary!.dThumbnail}',
                      width: 300,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                FontMedium(
                  title: '${widget.diary!.dTitle}',
                  size: 20,
                  overflow: TextOverflow.fade,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
