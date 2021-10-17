import 'package:codezza/src/common/CommonModule.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// 회원가입
// 로그인
// 프로필

// Create storage
final storage = new FlutterSecureStorage();

// 로그인 세션 (id, nickname, profile image)
set_uid(String uid) async {
  if (uid == "" || uid == null || uid == "null") {
    uid = "";
  }
  await storage.write(key: "token", value: uid);
}

set_uname(String uname) async {
  if (uname == "" || uname == null || uname == "null") {
    uname = await uid();
  }
  await storage.write(key: "uname", value: uname);
}

set_uphoto(String uphoto) async {
  if (uphoto == "" || uphoto == null || uphoto == "null") {
    uphoto = "assets/images/Profile/User.png";
  }
  await storage.write(key: "uphoto", value: uphoto);
}
