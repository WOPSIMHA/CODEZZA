import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo.freezed.dart';

part 'photo.g.dart';

/// 사진
@freezed
class Photo with _$Photo {
  factory Photo({
    /// pk 사진 고유 key
    required String pUUID,

    /// pk fk 일기 일련번호
    required int pgSEQ,

    /// 파일 저장명
    required String pSaveName,

    /// 등록자
    required String insID,

    /// 등록일
    required DateTime insDT,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
