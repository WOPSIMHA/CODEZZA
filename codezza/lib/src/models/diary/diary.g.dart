// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Diary _$_$_DiaryFromJson(Map<String, dynamic> json) {
  return _$_Diary(
    dSEQ: json['dSEQ'] as int,
    dTitle: json['dTitle'] as String,
    dText: json['dText'] as String,
    dThumbnail: json['dThumbnail'] as String,
    dPrivate: json['dPrivate'] as String,
    dDiaryType: json['dDiaryType'] as String,
    dgSEQ: json['dgSEQ'] as int,
    insID: json['insID'] as String,
    insDT: DateTime.parse(json['insDT'] as String),
    uptDT: DateTime.parse(json['uptDT'] as String),
  );
}

Map<String, dynamic> _$_$_DiaryToJson(_$_Diary instance) => <String, dynamic>{
      'dSEQ': instance.dSEQ,
      'dTitle': instance.dTitle,
      'dText': instance.dText,
      'dThumbnail': instance.dThumbnail,
      'dPrivate': instance.dPrivate,
      'dDiaryType': instance.dDiaryType,
      'dgSEQ': instance.dgSEQ,
      'insID': instance.insID,
      'insDT': instance.insDT.toIso8601String(),
      'uptDT': instance.uptDT.toIso8601String(),
    };
