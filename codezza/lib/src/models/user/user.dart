import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

///사용자
@freezed
class User with _$User {
  factory User({
    ///pk 아이디
    required String uID,

    ///비밀번호
    required String uPW,

    ///닉네임
    required String uName,

    ///프로필 사진 경로
    required String uPhoto,

    ///자기소개
    required String uComment,

    ///관심분야
    required String uCategory,

    ///계정 공개 비공개 여부
    required String uPrivate,

    ///등록자
    required String insID,

    ///등록일
    required DateTime insDT,

    ///수정일
    required DateTime uptDT,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
