import 'dart:async';
import 'dart:convert';

import 'package:codezza/src/screens/HomePage.dart';
import 'package:codezza/src/screens/auth/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';

import 'package:http/http.dart' as http;

import 'package:codezza/src/screens/PhotoPickExample.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    // 로그인 세션 있은 경우 메인 페이지로 없을 경우 로그인 페이지로
    home: await FlutterSession().get("token") != "" ? HomePage() : LoginPage(),
  ));
}
