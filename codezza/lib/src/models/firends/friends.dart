import 'package:freezed_annotation/freezed_annotation.dart';

part 'friends.freezed.dart';

part 'friends.g.dart';

/// 친구
@freezed
class Friends with _$Friends {
  factory Friends({
    /// pk 팔로잉 대상
    String? followingID,

    /// pk, fk 팔로잉 주체
    String? followedID,

    /// 등록자
    String? insID,

    /// 등록일
    DateTime? insDT,
  }) = _Friends;

  factory Friends.fromJson(Map<String, dynamic> json) =>
      _$FriendsFromJson(json);
}
