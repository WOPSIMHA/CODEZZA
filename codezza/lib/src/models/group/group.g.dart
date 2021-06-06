// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Group _$_$_GroupFromJson(Map<String, dynamic> json) {
  return _$_Group(
    gSEQ: json['gSEQ'] as int,
    gUID: json['gUID'] as String,
    gName: json['gName'] as String,
    gAuthority: json['gAuthority'] as String,
    insID: json['insID'] as String,
    insDT: DateTime.parse(json['insDT'] as String),
    uptID: json['uptID'] as String,
    uptDT: DateTime.parse(json['uptDT'] as String),
  );
}

Map<String, dynamic> _$_$_GroupToJson(_$_Group instance) => <String, dynamic>{
      'gSEQ': instance.gSEQ,
      'gUID': instance.gUID,
      'gName': instance.gName,
      'gAuthority': instance.gAuthority,
      'insID': instance.insID,
      'insDT': instance.insDT.toIso8601String(),
      'uptID': instance.uptID,
      'uptDT': instance.uptDT.toIso8601String(),
    };
