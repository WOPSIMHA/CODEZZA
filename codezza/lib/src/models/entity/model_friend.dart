import 'package:equatable/equatable.dart';

class Friends extends Equatable {
  /// pk 팔로잉 대상
  final String? followingID;

  /// pk, fk 팔로잉 주체
  final String? followedID;

  /// 등록자
  final String? insID;

  /// 등록일
  final DateTime? insDT;

  @override
  List<Object?> get props => [followingID, followedID, insID];

  const Friends({
    this.followingID,
    this.followedID,
    this.insID,
    this.insDT,
  });

  @override
  String toString() {
    return 'Friends{' +
        ' followingID: $followingID,' +
        ' followedID: $followedID,' +
        ' insID: $insID,' +
        ' insDT: $insDT,' +
        '}';
  }

  Friends copyWith({
    String? followingID,
    String? followedID,
    String? insID,
    DateTime? insDT,
  }) {
    return Friends(
      followingID: followingID ?? this.followingID,
      followedID: followedID ?? this.followedID,
      insID: insID ?? this.insID,
      insDT: insDT ?? this.insDT,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'followingID': this.followingID,
      'followedID': this.followedID,
      'insID': this.insID,
      'insDT': this.insDT,
    };
  }

  factory Friends.fromMap(Map<String, dynamic> map) {
    return Friends(
      followingID: map['followingID'] as String,
      followedID: map['followedID'] as String,
      insID: map['insID'] as String,
      insDT: map['insDT'] as DateTime,
    );
  }

}
