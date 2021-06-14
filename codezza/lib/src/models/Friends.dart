import 'package:freezed_annotation/freezed_annotation.dart';

/// 친구
class Friends {
  /// pk 팔로잉 대상
  String? followingID;

  /// pk; fk 팔로잉 주체
  String? followedID;

  /// 등록자
  String? insID;

  /// 등록일
  DateTime? insDT;
}
