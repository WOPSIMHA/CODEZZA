import 'package:flutter/material.dart';

class MyDiaryCard extends StatefulWidget {
  @override
  _MyDiaryCardState createState() => _MyDiaryCardState();
}

class _MyDiaryCardState extends State<MyDiaryCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 14, right: 14, bottom: 16),
      child: Card(
        child: Container(
          width: 240,
          height: 240,
          color: Colors.blueGrey[300],
        ),
      ),
    );
  }
}

