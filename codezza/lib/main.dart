import 'package:codezza/src/common/CommonModule.dart';
import 'package:codezza/src/screens/home/HomePage.dart';
import 'package:codezza/src/screens/auth/LoginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MaterialApp(
      // debugShowCheckedModeBanner: false,
      // 로그인 세션 있은 경우 메인 페이지로 없을 경우 로그인 페이지로
      // home: (await uid() == "" || await uid() == null) ? LoginPage() : HomePage(),
      home: LoginPage()));
}
