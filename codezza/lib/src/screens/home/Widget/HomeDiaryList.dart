import '/src/widgets/style.dart';
import 'package:flutter/material.dart';

class DiaryList extends StatefulWidget {
  final int? tabIndex;
  final int? index;
  final String? title;
  final GestureTapCallback? onTap;

  DiaryList({
    Key? key,
    required this.index,
    required this.title,
    required this.tabIndex,
    this.onTap,
  }) : super(key: key);

  @override
  _DiaryListState createState() => _DiaryListState();
}

class _DiaryListState extends State<DiaryList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          decoration: BoxDecoration(
            color: widget.index == widget.tabIndex ? kMainColor : kWhite2,
            borderRadius: widget.index == widget.tabIndex
                ? BorderRadius.circular(16)
                : BorderRadius.circular(16),
          ),
          child: Center(
            child: FontMedium(
              title: widget.title,
              size: 20,
              color:
                  widget.index == widget.tabIndex ? Colors.black : Colors.black,
            ),
          ),
        ),
        onTap: widget.onTap,
      ),
    );
  }
}
