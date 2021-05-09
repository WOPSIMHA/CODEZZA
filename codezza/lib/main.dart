import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'package:codezza/src/screens/user/login_screen.dart';

void main() async {
  // runApp(MyApp());

  // Http 연동 Get 예제
  String url = "https://my-json-server.typicode.com/typicode/demo/posts";
  var response = await http.get(Uri.parse(url));
  var statusCode = response.statusCode;
  var responseHeaders = response.headers;
  var responseBody = response.body;

  print("statusCode: ${statusCode}"); // console창에서 확인 가능
  print("responseHeaders: ${responseHeaders}");
  print("responseBody: ${responseBody}");
}

class MyApp extends StatelessWidget {
  // 기본
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GrowUp Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'GrowUp Demo Home Page'),
    );
  }

  // // 로그인 페이지 - 민호
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     // home: MyHomePage(),
  //     home: LoginPage(),
  //     // home: SignUpPage(),
  //     // home: ProfilePage(),
  //   );
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
