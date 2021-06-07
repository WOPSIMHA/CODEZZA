// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'friends.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Friends _$FriendsFromJson(Map<String, dynamic> json) {
  return _Friends.fromJson(json);
}

/// @nodoc
class _$FriendsTearOff {
  const _$FriendsTearOff();

  _Friends call(
      {String? followingID,
      String? followedID,
      String? insID,
      DateTime? insDT}) {
    return _Friends(
      followingID: followingID,
      followedID: followedID,
      insID: insID,
      insDT: insDT,
    );
  }

  Friends fromJson(Map<String, Object> json) {
    return Friends.fromJson(json);
  }
}

/// @nodoc
const $Friends = _$FriendsTearOff();

/// @nodoc
mixin _$Friends {
  /// pk 팔로잉 대상
  String? get followingID => throw _privateConstructorUsedError;

  /// pk, fk 팔로잉 주체
  String? get followedID => throw _privateConstructorUsedError;

  /// 등록자
  String? get insID => throw _privateConstructorUsedError;

  /// 등록일
  DateTime? get insDT => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendsCopyWith<Friends> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendsCopyWith<$Res> {
  factory $FriendsCopyWith(Friends value, $Res Function(Friends) then) =
      _$FriendsCopyWithImpl<$Res>;
  $Res call(
      {String? followingID,
      String? followedID,
      String? insID,
      DateTime? insDT});
}

/// @nodoc
class _$FriendsCopyWithImpl<$Res> implements $FriendsCopyWith<$Res> {
  _$FriendsCopyWithImpl(this._value, this._then);

  final Friends _value;
  // ignore: unused_field
  final $Res Function(Friends) _then;

  @override
  $Res call({
    Object? followingID = freezed,
    Object? followedID = freezed,
    Object? insID = freezed,
    Object? insDT = freezed,
  }) {
    return _then(_value.copyWith(
      followingID: followingID == freezed
          ? _value.followingID
          : followingID // ignore: cast_nullable_to_non_nullable
              as String?,
      followedID: followedID == freezed
          ? _value.followedID
          : followedID // ignore: cast_nullable_to_non_nullable
              as String?,
      insID: insID == freezed
          ? _value.insID
          : insID // ignore: cast_nullable_to_non_nullable
              as String?,
      insDT: insDT == freezed
          ? _value.insDT
          : insDT // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$FriendsCopyWith<$Res> implements $FriendsCopyWith<$Res> {
  factory _$FriendsCopyWith(_Friends value, $Res Function(_Friends) then) =
      __$FriendsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? followingID,
      String? followedID,
      String? insID,
      DateTime? insDT});
}

/// @nodoc
class __$FriendsCopyWithImpl<$Res> extends _$FriendsCopyWithImpl<$Res>
    implements _$FriendsCopyWith<$Res> {
  __$FriendsCopyWithImpl(_Friends _value, $Res Function(_Friends) _then)
      : super(_value, (v) => _then(v as _Friends));

  @override
  _Friends get _value => super._value as _Friends;

  @override
  $Res call({
    Object? followingID = freezed,
    Object? followedID = freezed,
    Object? insID = freezed,
    Object? insDT = freezed,
  }) {
    return _then(_Friends(
      followingID: followingID == freezed
          ? _value.followingID
          : followingID // ignore: cast_nullable_to_non_nullable
              as String?,
      followedID: followedID == freezed
          ? _value.followedID
          : followedID // ignore: cast_nullable_to_non_nullable
              as String?,
      insID: insID == freezed
          ? _value.insID
          : insID // ignore: cast_nullable_to_non_nullable
              as String?,
      insDT: insDT == freezed
          ? _value.insDT
          : insDT // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Friends implements _Friends {
  _$_Friends({this.followingID, this.followedID, this.insID, this.insDT});

  factory _$_Friends.fromJson(Map<String, dynamic> json) =>
      _$_$_FriendsFromJson(json);

  @override

  /// pk 팔로잉 대상
  final String? followingID;
  @override

  /// pk, fk 팔로잉 주체
  final String? followedID;
  @override

  /// 등록자
  final String? insID;
  @override

  /// 등록일
  final DateTime? insDT;

  @override
  String toString() {
    return 'Friends(followingID: $followingID, followedID: $followedID, insID: $insID, insDT: $insDT)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Friends &&
            (identical(other.followingID, followingID) ||
                const DeepCollectionEquality()
                    .equals(other.followingID, followingID)) &&
            (identical(other.followedID, followedID) ||
                const DeepCollectionEquality()
                    .equals(other.followedID, followedID)) &&
            (identical(other.insID, insID) ||
                const DeepCollectionEquality().equals(other.insID, insID)) &&
            (identical(other.insDT, insDT) ||
                const DeepCollectionEquality().equals(other.insDT, insDT)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(followingID) ^
      const DeepCollectionEquality().hash(followedID) ^
      const DeepCollectionEquality().hash(insID) ^
      const DeepCollectionEquality().hash(insDT);

  @JsonKey(ignore: true)
  @override
  _$FriendsCopyWith<_Friends> get copyWith =>
      __$FriendsCopyWithImpl<_Friends>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FriendsToJson(this);
  }
}

abstract class _Friends implements Friends {
  factory _Friends(
      {String? followingID,
      String? followedID,
      String? insID,
      DateTime? insDT}) = _$_Friends;

  factory _Friends.fromJson(Map<String, dynamic> json) = _$_Friends.fromJson;

  @override

  /// pk 팔로잉 대상
  String? get followingID => throw _privateConstructorUsedError;
  @override

  /// pk, fk 팔로잉 주체
  String? get followedID => throw _privateConstructorUsedError;
  @override

  /// 등록자
  String? get insID => throw _privateConstructorUsedError;
  @override

  /// 등록일
  DateTime? get insDT => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FriendsCopyWith<_Friends> get copyWith =>
      throw _privateConstructorUsedError;
}
