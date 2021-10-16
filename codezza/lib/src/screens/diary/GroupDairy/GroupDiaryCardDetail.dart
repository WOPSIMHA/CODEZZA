import '/src/models/entity.dart';
import '/src/widgets/style.dart';
import 'package:flutter/material.dart';

// 일기 상세보기
class GroupDiaryCardDetail extends StatefulWidget {
  final Diary? diary;

  const GroupDiaryCardDetail({Key? key, this.diary}) : super(key: key);

  @override
  _GroupDiaryCardDetailState createState() => _GroupDiaryCardDetailState();
}

class _GroupDiaryCardDetailState extends State<GroupDiaryCardDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: false,
      right: false,
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.9),
        body: body(),
      ),
    );
  }

  // Body
  Widget body() {
    return Container(
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage('assets/images/background_group.png'),
      //     fit: BoxFit.cover,
      //   ),
      // ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: _imageCard(),
        ),
      ),
    );
  }

  // 사진과 일기 내용
  Widget _imageCard() {
    double h = MediaQuery.of(context).size.height; // 전체 화면 세로 사이즈
    double w = MediaQuery.of(context).size.width; // 전체 화면 가로 사이즈
    return Card(
      elevation: 8,
      child: Container(
        width: w * 0.9,
        height: h * 0.6,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 16.0,
            left: 16.0,
            right: 16.0,
            bottom: 60,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: '${widget.diary!.dSEQ}',
                child: Image.network(
                  '${widget.diary!.dThumbnail}',
                  width: 360,
                  height: 240,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 16),
              FontBold(
                title: '${widget.diary!.dTitle}',
                size: 20,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 16),
              Expanded(
                child: FontLight(
                  title: '${widget.diary!.dText}',
                  size: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
