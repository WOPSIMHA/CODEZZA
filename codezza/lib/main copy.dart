// import 'dart:async';
// import 'dart:convert';

import 'package:flutter/material.dart';

// import 'package:http/http.dart' as http;

import 'package:codezza/src/screens/auth/LoginPage.dart';
// import 'package:codezza/test.dart' as test;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

void main() async {
  // runApp(MyApp());
  // Http 연동 Get 예제
  // String url = "http://172.30.1.8:80/test";
  // Map<String, String> baseheaders = {
  //   "Content-type": "application/json",
  //   "Accept": "application/json"
  // };
  // Map<String, String> data = {};
  // var response =
  //     await http.get(Uri.parse(url), headers: headers).then((dynamic res) {
  //   print(res);
  //   if (res["code"] != 200) throw new Exception(res["message"][0]);
  //   return res;
  // });
}

// class MyApp extends StatelessWidget {
//   // 기본
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'GrowUp Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'GrowUp Demo Home Page'),
//     );
//   }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
