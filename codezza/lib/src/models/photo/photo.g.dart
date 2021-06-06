// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Photo _$_$_PhotoFromJson(Map<String, dynamic> json) {
  return _$_Photo(
    pUUID: json['pUUID'] as String,
    pgSEQ: json['pgSEQ'] as int,
    pSaveName: json['pSaveName'] as String,
    insID: json['insID'] as String,
    insDT: DateTime.parse(json['insDT'] as String),
  );
}

Map<String, dynamic> _$_$_PhotoToJson(_$_Photo instance) => <String, dynamic>{
      'pUUID': instance.pUUID,
      'pgSEQ': instance.pgSEQ,
      'pSaveName': instance.pSaveName,
      'insID': instance.insID,
      'insDT': instance.insDT.toIso8601String(),
    };
