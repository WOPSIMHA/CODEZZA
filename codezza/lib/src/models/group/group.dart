import 'package:freezed_annotation/freezed_annotation.dart';

part 'group.freezed.dart';

part 'group.g.dart';

/// 그룹
@freezed
class Group with _$Group {
  factory Group({
    /// pk 그룹 일련번호
    required int gSEQ,

    /// pk, fk 구성원 아이디
    required String gUID,

    /// 그룹명
    required String gName,

    /// 그룹 내 권한
    required String gAuthority,

    /// 등록자
    required String insID,

    /// 등록일
    required DateTime insDT,

    /// 수정자
    required String uptID,

    /// 수정일
    required DateTime uptDT,
  }) = _Group;

  factory Group.fromJson(Map<String, dynamic> json) =>
      _$GroupFromJson(json);
}
