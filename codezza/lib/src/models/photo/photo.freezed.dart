// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return _Photo.fromJson(json);
}

/// @nodoc
class _$PhotoTearOff {
  const _$PhotoTearOff();

  _Photo call(
      {String? pUUID,
      int? pgSEQ,
      String? pSaveName,
      String? insID,
      DateTime? insDT}) {
    return _Photo(
      pUUID: pUUID,
      pgSEQ: pgSEQ,
      pSaveName: pSaveName,
      insID: insID,
      insDT: insDT,
    );
  }

  Photo fromJson(Map<String, Object> json) {
    return Photo.fromJson(json);
  }
}

/// @nodoc
const $Photo = _$PhotoTearOff();

/// @nodoc
mixin _$Photo {
  /// pk 사진 고유 key
  String? get pUUID => throw _privateConstructorUsedError;

  /// pk fk 일기 일련번호
  int? get pgSEQ => throw _privateConstructorUsedError;

  /// 파일 저장명
  String? get pSaveName => throw _privateConstructorUsedError;

  /// 등록자
  String? get insID => throw _privateConstructorUsedError;

  /// 등록일
  DateTime? get insDT => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) =
      _$PhotoCopyWithImpl<$Res>;
  $Res call(
      {String? pUUID,
      int? pgSEQ,
      String? pSaveName,
      String? insID,
      DateTime? insDT});
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res> implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  final Photo _value;
  // ignore: unused_field
  final $Res Function(Photo) _then;

  @override
  $Res call({
    Object? pUUID = freezed,
    Object? pgSEQ = freezed,
    Object? pSaveName = freezed,
    Object? insID = freezed,
    Object? insDT = freezed,
  }) {
    return _then(_value.copyWith(
      pUUID: pUUID == freezed
          ? _value.pUUID
          : pUUID // ignore: cast_nullable_to_non_nullable
              as String?,
      pgSEQ: pgSEQ == freezed
          ? _value.pgSEQ
          : pgSEQ // ignore: cast_nullable_to_non_nullable
              as int?,
      pSaveName: pSaveName == freezed
          ? _value.pSaveName
          : pSaveName // ignore: cast_nullable_to_non_nullable
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
abstract class _$PhotoCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$PhotoCopyWith(_Photo value, $Res Function(_Photo) then) =
      __$PhotoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? pUUID,
      int? pgSEQ,
      String? pSaveName,
      String? insID,
      DateTime? insDT});
}

/// @nodoc
class __$PhotoCopyWithImpl<$Res> extends _$PhotoCopyWithImpl<$Res>
    implements _$PhotoCopyWith<$Res> {
  __$PhotoCopyWithImpl(_Photo _value, $Res Function(_Photo) _then)
      : super(_value, (v) => _then(v as _Photo));

  @override
  _Photo get _value => super._value as _Photo;

  @override
  $Res call({
    Object? pUUID = freezed,
    Object? pgSEQ = freezed,
    Object? pSaveName = freezed,
    Object? insID = freezed,
    Object? insDT = freezed,
  }) {
    return _then(_Photo(
      pUUID: pUUID == freezed
          ? _value.pUUID
          : pUUID // ignore: cast_nullable_to_non_nullable
              as String?,
      pgSEQ: pgSEQ == freezed
          ? _value.pgSEQ
          : pgSEQ // ignore: cast_nullable_to_non_nullable
              as int?,
      pSaveName: pSaveName == freezed
          ? _value.pSaveName
          : pSaveName // ignore: cast_nullable_to_non_nullable
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
class _$_Photo implements _Photo {
  _$_Photo({this.pUUID, this.pgSEQ, this.pSaveName, this.insID, this.insDT});

  factory _$_Photo.fromJson(Map<String, dynamic> json) =>
      _$_$_PhotoFromJson(json);

  @override

  /// pk 사진 고유 key
  final String? pUUID;
  @override

  /// pk fk 일기 일련번호
  final int? pgSEQ;
  @override

  /// 파일 저장명
  final String? pSaveName;
  @override

  /// 등록자
  final String? insID;
  @override

  /// 등록일
  final DateTime? insDT;

  @override
  String toString() {
    return 'Photo(pUUID: $pUUID, pgSEQ: $pgSEQ, pSaveName: $pSaveName, insID: $insID, insDT: $insDT)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Photo &&
            (identical(other.pUUID, pUUID) ||
                const DeepCollectionEquality().equals(other.pUUID, pUUID)) &&
            (identical(other.pgSEQ, pgSEQ) ||
                const DeepCollectionEquality().equals(other.pgSEQ, pgSEQ)) &&
            (identical(other.pSaveName, pSaveName) ||
                const DeepCollectionEquality()
                    .equals(other.pSaveName, pSaveName)) &&
            (identical(other.insID, insID) ||
                const DeepCollectionEquality().equals(other.insID, insID)) &&
            (identical(other.insDT, insDT) ||
                const DeepCollectionEquality().equals(other.insDT, insDT)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pUUID) ^
      const DeepCollectionEquality().hash(pgSEQ) ^
      const DeepCollectionEquality().hash(pSaveName) ^
      const DeepCollectionEquality().hash(insID) ^
      const DeepCollectionEquality().hash(insDT);

  @JsonKey(ignore: true)
  @override
  _$PhotoCopyWith<_Photo> get copyWith =>
      __$PhotoCopyWithImpl<_Photo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PhotoToJson(this);
  }
}

abstract class _Photo implements Photo {
  factory _Photo(
      {String? pUUID,
      int? pgSEQ,
      String? pSaveName,
      String? insID,
      DateTime? insDT}) = _$_Photo;

  factory _Photo.fromJson(Map<String, dynamic> json) = _$_Photo.fromJson;

  @override

  /// pk 사진 고유 key
  String? get pUUID => throw _privateConstructorUsedError;
  @override

  /// pk fk 일기 일련번호
  int? get pgSEQ => throw _privateConstructorUsedError;
  @override

  /// 파일 저장명
  String? get pSaveName => throw _privateConstructorUsedError;
  @override

  /// 등록자
  String? get insID => throw _privateConstructorUsedError;
  @override

  /// 등록일
  DateTime? get insDT => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PhotoCopyWith<_Photo> get copyWith => throw _privateConstructorUsedError;
}
