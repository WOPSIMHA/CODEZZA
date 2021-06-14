import 'package:freezed_annotation/freezed_annotation.dart';

/// 사진
@freezed
class Photo {
  /// pk 사진 고유 key
  String? pUUID;

  /// pk fk 일기 일련번호
  int? pgSEQ;

  /// 파일 저장명
  String? pSaveName;

  /// 등록자
  String? insID;

  /// 등록일
  DateTime? insDT;
}
