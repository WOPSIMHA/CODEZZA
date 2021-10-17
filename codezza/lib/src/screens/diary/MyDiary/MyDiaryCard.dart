import 'package:codezza/src/common/CommonModule.dart';
import 'package:codezza/src/screens/diary/MyDiary/MyDiaryDetailPage.dart';
import 'package:codezza/src/widgets/style.dart';
import 'package:flutter/material.dart';

// 개인 일기 카드
class MyDiaryCard extends StatefulWidget {
  final dynamic diary;

  const MyDiaryCard({Key? key, this.diary}) : super(key: key);

  @override
  _MyDiaryCardState createState() => _MyDiaryCardState();
}

class _MyDiaryCardState extends State<MyDiaryCard> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height; // 전체 화면 세로 사이즈
    double w = MediaQuery.of(context).size.width; // 전체 화면 세로 사이즈
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 14, right: 14, bottom: 16),
      child: Container(
        height: h * 0.42,
        width: w * 0.9,
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Hero(
                  tag: '${widget.diary!['d_seq']}',
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      PageRouteBuilder(
                        opaque: false,
                        pageBuilder: (BuildContext context, _, __) {
                          return DiaryDetail(diary: widget.diary!);
                        },
                      ),
                    ),
                    child: Image.network(
                      '${baseAPIUrl}static/${widget.diary!['ins_id']}/${widget.diary!['d_photo']}',
                      height: h * 0.2,
                      width: w * 0.3,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                FontMedium(
                  title: '${widget.diary!['d_title']}',
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
