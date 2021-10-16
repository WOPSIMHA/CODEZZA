import 'package:codezza/src/common/CommonModule.dart';
import 'package:codezza/src/widgets/flutter_session.dart';

// 회원가입
// 로그인
// 프로필

// 로그인 세션/쿠키 (id, nickname, profileImage)

set_uid(uid) async {
  if (uid == "" || uid == null || uid == "null") {
    uid = "";
  }
  await FlutterSession().set("token", uid);
}

set_uname(uname) async {
  if (uname == "" || uname == null || uname == "null") {
    uname = await uid();
  }
  await FlutterSession().set("uname", uname);
}

set_uphoto(uphoto) async {
  if (uphoto == "" || uphoto == null || uphoto == "null") {
    uphoto = "assets/images/Profile/User.png";
  }
  await FlutterSession().set("uphoto", uphoto);
}
