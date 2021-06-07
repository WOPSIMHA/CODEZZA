import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

///사용자
@freezed
class User with _$User {
  factory User({
    ///pk 아이디
    String? uID,

    ///비밀번호
    String? uPW,

    ///닉네임
    String? uName,

    ///프로필 사진 경로
    String? uPhoto,

    ///자기소개
    String? uComment,

    ///관심분야
    String? uCategory,

    ///계정 공개 비공개 여부
    String? uPrivate,

    ///등록자
    String? insID,

    ///등록일
    DateTime? insDT,

    ///수정일
    DateTime? uptDT,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
