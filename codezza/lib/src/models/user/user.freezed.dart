// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {String? uID,
      String? uPW,
      String? uName,
      String? uPhoto,
      String? uComment,
      String? uCategory,
      String? uPrivate,
      String? insID,
      DateTime? insDT,
      DateTime? uptDT}) {
    return _User(
      uID: uID,
      uPW: uPW,
      uName: uName,
      uPhoto: uPhoto,
      uComment: uComment,
      uCategory: uCategory,
      uPrivate: uPrivate,
      insID: insID,
      insDT: insDT,
      uptDT: uptDT,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  ///pk 아이디
  String? get uID => throw _privateConstructorUsedError;

  ///비밀번호
  String? get uPW => throw _privateConstructorUsedError;

  ///닉네임
  String? get uName => throw _privateConstructorUsedError;

  ///프로필 사진 경로
  String? get uPhoto => throw _privateConstructorUsedError;

  ///자기소개
  String? get uComment => throw _privateConstructorUsedError;

  ///관심분야
  String? get uCategory => throw _privateConstructorUsedError;

  ///계정 공개 비공개 여부
  String? get uPrivate => throw _privateConstructorUsedError;

  ///등록자
  String? get insID => throw _privateConstructorUsedError;

  ///등록일
  DateTime? get insDT => throw _privateConstructorUsedError;

  ///수정일
  DateTime? get uptDT => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String? uID,
      String? uPW,
      String? uName,
      String? uPhoto,
      String? uComment,
      String? uCategory,
      String? uPrivate,
      String? insID,
      DateTime? insDT,
      DateTime? uptDT});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? uID = freezed,
    Object? uPW = freezed,
    Object? uName = freezed,
    Object? uPhoto = freezed,
    Object? uComment = freezed,
    Object? uCategory = freezed,
    Object? uPrivate = freezed,
    Object? insID = freezed,
    Object? insDT = freezed,
    Object? uptDT = freezed,
  }) {
    return _then(_value.copyWith(
      uID: uID == freezed
          ? _value.uID
          : uID // ignore: cast_nullable_to_non_nullable
              as String?,
      uPW: uPW == freezed
          ? _value.uPW
          : uPW // ignore: cast_nullable_to_non_nullable
              as String?,
      uName: uName == freezed
          ? _value.uName
          : uName // ignore: cast_nullable_to_non_nullable
              as String?,
      uPhoto: uPhoto == freezed
          ? _value.uPhoto
          : uPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      uComment: uComment == freezed
          ? _value.uComment
          : uComment // ignore: cast_nullable_to_non_nullable
              as String?,
      uCategory: uCategory == freezed
          ? _value.uCategory
          : uCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      uPrivate: uPrivate == freezed
          ? _value.uPrivate
          : uPrivate // ignore: cast_nullable_to_non_nullable
              as String?,
      insID: insID == freezed
          ? _value.insID
          : insID // ignore: cast_nullable_to_non_nullable
              as String?,
      insDT: insDT == freezed
          ? _value.insDT
          : insDT // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uptDT: uptDT == freezed
          ? _value.uptDT
          : uptDT // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? uID,
      String? uPW,
      String? uName,
      String? uPhoto,
      String? uComment,
      String? uCategory,
      String? uPrivate,
      String? insID,
      DateTime? insDT,
      DateTime? uptDT});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? uID = freezed,
    Object? uPW = freezed,
    Object? uName = freezed,
    Object? uPhoto = freezed,
    Object? uComment = freezed,
    Object? uCategory = freezed,
    Object? uPrivate = freezed,
    Object? insID = freezed,
    Object? insDT = freezed,
    Object? uptDT = freezed,
  }) {
    return _then(_User(
      uID: uID == freezed
          ? _value.uID
          : uID // ignore: cast_nullable_to_non_nullable
              as String?,
      uPW: uPW == freezed
          ? _value.uPW
          : uPW // ignore: cast_nullable_to_non_nullable
              as String?,
      uName: uName == freezed
          ? _value.uName
          : uName // ignore: cast_nullable_to_non_nullable
              as String?,
      uPhoto: uPhoto == freezed
          ? _value.uPhoto
          : uPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      uComment: uComment == freezed
          ? _value.uComment
          : uComment // ignore: cast_nullable_to_non_nullable
              as String?,
      uCategory: uCategory == freezed
          ? _value.uCategory
          : uCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      uPrivate: uPrivate == freezed
          ? _value.uPrivate
          : uPrivate // ignore: cast_nullable_to_non_nullable
              as String?,
      insID: insID == freezed
          ? _value.insID
          : insID // ignore: cast_nullable_to_non_nullable
              as String?,
      insDT: insDT == freezed
          ? _value.insDT
          : insDT // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uptDT: uptDT == freezed
          ? _value.uptDT
          : uptDT // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  _$_User(
      {this.uID,
      this.uPW,
      this.uName,
      this.uPhoto,
      this.uComment,
      this.uCategory,
      this.uPrivate,
      this.insID,
      this.insDT,
      this.uptDT});

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override

  ///pk 아이디
  final String? uID;
  @override

  ///비밀번호
  final String? uPW;
  @override

  ///닉네임
  final String? uName;
  @override

  ///프로필 사진 경로
  final String? uPhoto;
  @override

  ///자기소개
  final String? uComment;
  @override

  ///관심분야
  final String? uCategory;
  @override

  ///계정 공개 비공개 여부
  final String? uPrivate;
  @override

  ///등록자
  final String? insID;
  @override

  ///등록일
  final DateTime? insDT;
  @override

  ///수정일
  final DateTime? uptDT;

  @override
  String toString() {
    return 'User(uID: $uID, uPW: $uPW, uName: $uName, uPhoto: $uPhoto, uComment: $uComment, uCategory: $uCategory, uPrivate: $uPrivate, insID: $insID, insDT: $insDT, uptDT: $uptDT)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.uID, uID) ||
                const DeepCollectionEquality().equals(other.uID, uID)) &&
            (identical(other.uPW, uPW) ||
                const DeepCollectionEquality().equals(other.uPW, uPW)) &&
            (identical(other.uName, uName) ||
                const DeepCollectionEquality().equals(other.uName, uName)) &&
            (identical(other.uPhoto, uPhoto) ||
                const DeepCollectionEquality().equals(other.uPhoto, uPhoto)) &&
            (identical(other.uComment, uComment) ||
                const DeepCollectionEquality()
                    .equals(other.uComment, uComment)) &&
            (identical(other.uCategory, uCategory) ||
                const DeepCollectionEquality()
                    .equals(other.uCategory, uCategory)) &&
            (identical(other.uPrivate, uPrivate) ||
                const DeepCollectionEquality()
                    .equals(other.uPrivate, uPrivate)) &&
            (identical(other.insID, insID) ||
                const DeepCollectionEquality().equals(other.insID, insID)) &&
            (identical(other.insDT, insDT) ||
                const DeepCollectionEquality().equals(other.insDT, insDT)) &&
            (identical(other.uptDT, uptDT) ||
                const DeepCollectionEquality().equals(other.uptDT, uptDT)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uID) ^
      const DeepCollectionEquality().hash(uPW) ^
      const DeepCollectionEquality().hash(uName) ^
      const DeepCollectionEquality().hash(uPhoto) ^
      const DeepCollectionEquality().hash(uComment) ^
      const DeepCollectionEquality().hash(uCategory) ^
      const DeepCollectionEquality().hash(uPrivate) ^
      const DeepCollectionEquality().hash(insID) ^
      const DeepCollectionEquality().hash(insDT) ^
      const DeepCollectionEquality().hash(uptDT);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  factory _User(
      {String? uID,
      String? uPW,
      String? uName,
      String? uPhoto,
      String? uComment,
      String? uCategory,
      String? uPrivate,
      String? insID,
      DateTime? insDT,
      DateTime? uptDT}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override

  ///pk 아이디
  String? get uID => throw _privateConstructorUsedError;
  @override

  ///비밀번호
  String? get uPW => throw _privateConstructorUsedError;
  @override

  ///닉네임
  String? get uName => throw _privateConstructorUsedError;
  @override

  ///프로필 사진 경로
  String? get uPhoto => throw _privateConstructorUsedError;
  @override

  ///자기소개
  String? get uComment => throw _privateConstructorUsedError;
  @override

  ///관심분야
  String? get uCategory => throw _privateConstructorUsedError;
  @override

  ///계정 공개 비공개 여부
  String? get uPrivate => throw _privateConstructorUsedError;
  @override

  ///등록자
  String? get insID => throw _privateConstructorUsedError;
  @override

  ///등록일
  DateTime? get insDT => throw _privateConstructorUsedError;
  @override

  ///수정일
  DateTime? get uptDT => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
