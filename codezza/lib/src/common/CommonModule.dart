import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
// import 'package:path/path.dart' as path;

import '/src/widgets/style.dart';
import 'AuthModule.dart';

Future<String> uid() async {
  String? uId = await storage.read(key: "token");
  if (uId == "" || uId == null || uId == "null") {
    uId = "";
  }
  return uId.toString();
}

Future<String> uname() async {
  return (await storage.read(key: "uname")).toString();
}

Future<String> uphoto() async {
  return (await storage.read(key: "uphoto")).toString();
}

// String baseAPIUrl = "http://172.30.1.2:5000/";
String baseAPIUrl = "http://192.168.0.110:5000/";

textAlertDialog(context, String message) {
  showDialog(
    context: context,
    barrierDismissible: false, // Dialog 제외 영역 터치 x
    builder: (BuildContext context) {
      return AlertDialog(
        shape: // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        //Dialog Main Title
        title: Center(
            child: FontMedium(
          title: "알 림",
          color: kMainColor,
        )),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FontMedium(
              title: message,
            )
          ],
        ),
        actions: <Widget>[
          TextButton(
            child: FontMedium(
              title: "확인",
              color: kMainColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}

Future<dynamic> fileUpload(File file) async {
  bool success = false;
  Uri uri = Uri.parse(baseAPIUrl + "/imageUpload");
  int fileSize = file.lengthSync();
  String fileName = "codezza_" + file.path.split("image_picker").last;
  Stream<Uint8List> fileStream = file.readAsBytes().asStream();
  final request = http.MultipartRequest("POST", uri);
  final headers = {
    "Content-type": "multipart/form-data",
    "cookies": await uid()
  };
  request.files.add(
      http.MultipartFile("image", fileStream, fileSize, filename: fileName));
  request.headers.addAll(headers);
  final response = await request.send();
  if (response.statusCode == 200) {
    http.Response result = await http.Response.fromStream(response);
    final resultObj = jsonDecode(result.body);
    if (resultObj['success']) {
      success = true;
    }
  } else {
    // textAlertDialog(context, "시스템 오류가 발생했습니다!.\n다시 시도해 주세요.");
    throw Exception();
  }

  final returnObj = {
    'success': success,
    'fileName': fileName,
  };
  return returnObj;
/*
  File(file.path) // PickedFile convert to File
  file.path // 파일 위치 경로
  path.basename((file.path).toString()) // 파일명.파일확장자명
  path.basenameWithoutExtension((file.path).toString()) // 파일명
  path.extension((file.path).toString()) //.파일확장자명
  */
}

Future<dynamic> getHttp(String path, dynamic params) async {
  bool success = false;
  var returnObj = {};
  Uri uri = Uri.parse(baseAPIUrl + path);
  var headers = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  };
  final response = await http.get(
    uri,
    headers: headers,
  );

  if (response.statusCode == 200) {
    dynamic result = json.decode(utf8.decode(response.bodyBytes));
    final resultObj = jsonDecode(result);
    if (resultObj['success']) {
      success = true;
      returnObj = resultObj['result'];
    }
  } else {
    textAlertDialog('0', "시스템 오류가 발생했습니다!.\n다시 시도해 주세요.");
    throw Exception();
  }

  return {
    'success': success,
    'returnObj': returnObj,
  };
}

Future<dynamic> postHttp(String path, dynamic params) async {
  print('1');
  bool success = false;
  var returnObj = {};
  Uri uri = Uri.parse(baseAPIUrl + path);
  var headers = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  };

  final response = await http.post(
    uri,
    headers: headers,
    body: jsonEncode(params),
  );

  if (response.statusCode == 200) {
    // dynamic result = json.decode(utf8.decode(response.bodyBytes));
    // dynamic result = json.decode(response.body);
    String result = response.body;
    final resultObj = jsonDecode(result);
    if (resultObj['success']) {
      success = true;
      returnObj = resultObj['result'];
    }
  } else {
    // textAlertDialog(context, "시스템 오류가 발생했습니다!.\n다시 시도해 주세요.");
    throw Exception();
  }

  return {
    'success': success,
    'returnObj': returnObj,
  };
}
