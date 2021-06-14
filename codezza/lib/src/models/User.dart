import 'package:flutter/src/widgets/editable_text.dart';

///사용자
class User {
  ///pk 아이디
  String? uId;

  ///비밀번호
  String? uPw;

  ///닉네임
  String? uName;

  ///프로필 사진 경로
  String? uPhoto;

  ///자기소개
  String? uComment;

  ///관심분야
  String? uCategory;

  ///계정 공개 비공개 여부
  String? uPrivate;

  ///등록자
  String? insId;

  ///등록일
  DateTime? insDt;

  ///수정일
  DateTime? uptDt;
}
