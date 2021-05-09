// 프로필
import 'package:codezza/src/components/style/color_style.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: green2,
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    color: white4,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 46, left: 20, right: 20),
              child: Card(
                child: Container(
                  width: 324,
                  height: 240,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
