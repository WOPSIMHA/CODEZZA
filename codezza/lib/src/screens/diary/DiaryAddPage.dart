import '/src/widgets/style.dart';
import 'package:flutter/material.dart';

// 일기 작성 페이지
class DiaryAdd extends StatefulWidget {
  @override
  _DiaryAddState createState() => _DiaryAddState();
}

class _DiaryAddState extends State<DiaryAdd> {
  List<Widget> _children = [];
  int _count = 0;
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: InkWell(
              child: Icon(Icons.arrow_back, color: Colors.black, size: 36),
              onTap: () {},
            ),
          ),
          backgroundColor: kWhite2,
          elevation: 0,
          toolbarHeight: 65,
          actions: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextButton(
                onPressed: () {},
                child: FontMedium(
                  title: '등록',
                  size: 14,
                  color: kGray1,
                ),
                style: TextButton.styleFrom(
                  backgroundColor: kMainColor,
                ),
              ),
            )
          ],
        ),
        body: buildBody(),
      ),
    );
  }

  // Body
  Widget buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _tabButton(),
      ],
    );
  }

  // 일기장 선택 탭
  Widget _tabButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 40, right: 40),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          border: Border.all(color: kMainColor, width: 2),
        ),
        height: 60,
        width: 400,
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    color: _index == 0 ? kMainColor : kWhite2,
                    borderRadius: _index == 0
                        ? BorderRadius.only(
                            topLeft: Radius.circular(6),
                            bottomLeft: Radius.circular(6),
                          )
                        : BorderRadius.only(
                            topLeft: Radius.circular(6),
                            bottomLeft: Radius.circular(6),
                          ),
                  ),
                  child: Center(
                    child: FontMedium(
                      title: '개인일기',
                      size: 20,
                      color: _index == 0 ? Colors.black : Colors.black,
                    ),
                  ),
                ),
                onTap: () {
                  _tabIndex(0);
                },
              ),
            ),
            Expanded(
              child: InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    color: _index == 1 ? kMainColor : kWhite2,
                    borderRadius: _index == 0
                        ? BorderRadius.only(
                            topRight: Radius.circular(6),
                            bottomRight: Radius.circular(6),
                          )
                        : BorderRadius.only(
                            topRight: Radius.circular(6),
                            bottomRight: Radius.circular(6),
                          ),
                  ),
                  child: Center(
                    child: FontMedium(
                      title: '그룹일기',
                      size: 20,
                      color: _index == 1 ? Colors.black : Colors.black,
                    ),
                  ),
                ),
                onTap: () {
                  _tabIndex(1);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // tab 전환 함수
  void _tabIndex(int index) {
    setState(() {
      _index = index;
    });
  }

}
