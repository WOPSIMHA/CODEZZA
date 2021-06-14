import 'package:freezed_annotation/freezed_annotation.dart';

/// 그룹
class Group {
  /// pk 그룹 일련번호
  int? gSEQ;

  /// pk; fk 구성원 아이디
  String? gUID;

  /// 그룹명
  String? gName;

  /// 그룹 내 권한
  String? gAuthority;

  /// 등록자
  String? insID;

  /// 등록일
  DateTime? insDT;

  /// 수정자
  String? uptID;

  /// 수정일
  DateTime? uptDT;
}
