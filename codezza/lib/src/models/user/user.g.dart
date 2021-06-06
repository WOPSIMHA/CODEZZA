// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    uID: json['uID'] as String,
    uPW: json['uPW'] as String,
    uName: json['uName'] as String,
    uPhoto: json['uPhoto'] as String,
    uComment: json['uComment'] as String,
    uCategory: json['uCategory'] as String,
    uPrivate: json['uPrivate'] as String,
    insID: json['insID'] as String,
    insDT: DateTime.parse(json['insDT'] as String),
    uptDT: DateTime.parse(json['uptDT'] as String),
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'uID': instance.uID,
      'uPW': instance.uPW,
      'uName': instance.uName,
      'uPhoto': instance.uPhoto,
      'uComment': instance.uComment,
      'uCategory': instance.uCategory,
      'uPrivate': instance.uPrivate,
      'insID': instance.insID,
      'insDT': instance.insDT.toIso8601String(),
      'uptDT': instance.uptDT.toIso8601String(),
    };
