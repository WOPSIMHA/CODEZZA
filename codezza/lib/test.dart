// import 'dart:async';
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// Future<Post> fetchPost() async {
//   String url = "http://172.30.1.8:80/test";
//   Map<String, String> baseheaders = {
//     "Content-type": "application/json",
//     "Accept": "application/json"
//   };

//   final response = await http.get(Uri.parse(url), headers: baseheaders);
//   if (response.statusCode == 200) {
//     // 만약 서버로의 요청이 성공하면, JSON을 파싱합니다.
//     return Post.fromJson(json.decode(response.body));
//   } else {
//     // 만약 요청이 실패하면, 에러를 던집니다.
//     throw Exception('Failed to load post');
//   }
// }

// class Post {
//   final String uId;
//   final String uName;

//   Post({this.uId, this.uName});

//   factory Post.fromJson(Map<String, dynamic> json) {
//     return Post(uId: json['uId'], uName: json['uName']);
//   }
// }

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   MyApp({Key key}) : super(key: key);

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Future<Post> post;

//   @override
//   void initState() {
//     super.initState();
//     post = fetchPost();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Fetch Data Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Fetch Data Example'),
//         ),
//         body: Center(
//           child: FutureBuilder<Post>(
//             future: post,
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return Text(snapshot.data.uName);
//               } else if (snapshot.hasError) {
//                 return Text("${snapshot.error}");
//               }

//               // 기본적으로 로딩 Spinner를 보여줍니다.
//               return CircularProgressIndicator();
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
