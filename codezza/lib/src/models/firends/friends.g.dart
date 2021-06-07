// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friends.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Friends _$_$_FriendsFromJson(Map<String, dynamic> json) {
  return _$_Friends(
    followingID: json['followingID'] as String?,
    followedID: json['followedID'] as String?,
    insID: json['insID'] as String?,
    insDT:
        json['insDT'] == null ? null : DateTime.parse(json['insDT'] as String),
  );
}

Map<String, dynamic> _$_$_FriendsToJson(_$_Friends instance) =>
    <String, dynamic>{
      'followingID': instance.followingID,
      'followedID': instance.followedID,
      'insID': instance.insID,
      'insDT': instance.insDT?.toIso8601String(),
    };
