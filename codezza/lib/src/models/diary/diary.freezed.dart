// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'diary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Diary _$DiaryFromJson(Map<String, dynamic> json) {
  return _Diary.fromJson(json);
}

/// @nodoc
class _$DiaryTearOff {
  const _$DiaryTearOff();

  _Diary call(
      {required int dSEQ,
      required String dTitle,
      required String dText,
      required String dThumbnail,
      required String dPrivate,
      required String dDiaryType,
      required int dgSEQ,
      required String insID,
      required DateTime insDT,
      required DateTime uptDT}) {
    return _Diary(
      dSEQ: dSEQ,
      dTitle: dTitle,
      dText: dText,
      dThumbnail: dThumbnail,
      dPrivate: dPrivate,
      dDiaryType: dDiaryType,
      dgSEQ: dgSEQ,
      insID: insID,
      insDT: insDT,
      uptDT: uptDT,
    );
  }

  Diary fromJson(Map<String, Object> json) {
    return Diary.fromJson(json);
  }
}

/// @nodoc
const $Diary = _$DiaryTearOff();

/// @nodoc
mixin _$Diary {
  /// pk 일기 일련번호
  int get dSEQ => throw _privateConstructorUsedError;

  /// 일기 제목
  String get dTitle => throw _privateConstructorUsedError;

  /// 일기 내용
  String get dText => throw _privateConstructorUsedError;

  /// 썸네일 이미지 정보
  String get dThumbnail => throw _privateConstructorUsedError;

  /// 공개.비공개 플래그
  String get dPrivate => throw _privateConstructorUsedError;

  /// 일기 타입 : 개인 or 그룹
  String get dDiaryType => throw _privateConstructorUsedError;

  /// pk, fk 그룹 일련번호
  int get dgSEQ => throw _privateConstructorUsedError;

  /// fk 등록자
  String get insID => throw _privateConstructorUsedError;

  /// 등록일
  DateTime get insDT => throw _privateConstructorUsedError;

  /// 수정일
  DateTime get uptDT => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiaryCopyWith<Diary> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryCopyWith<$Res> {
  factory $DiaryCopyWith(Diary value, $Res Function(Diary) then) =
      _$DiaryCopyWithImpl<$Res>;
  $Res call(
      {int dSEQ,
      String dTitle,
      String dText,
      String dThumbnail,
      String dPrivate,
      String dDiaryType,
      int dgSEQ,
      String insID,
      DateTime insDT,
      DateTime uptDT});
}

/// @nodoc
class _$DiaryCopyWithImpl<$Res> implements $DiaryCopyWith<$Res> {
  _$DiaryCopyWithImpl(this._value, this._then);

  final Diary _value;
  // ignore: unused_field
  final $Res Function(Diary) _then;

  @override
  $Res call({
    Object? dSEQ = freezed,
    Object? dTitle = freezed,
    Object? dText = freezed,
    Object? dThumbnail = freezed,
    Object? dPrivate = freezed,
    Object? dDiaryType = freezed,
    Object? dgSEQ = freezed,
    Object? insID = freezed,
    Object? insDT = freezed,
    Object? uptDT = freezed,
  }) {
    return _then(_value.copyWith(
      dSEQ: dSEQ == freezed
          ? _value.dSEQ
          : dSEQ // ignore: cast_nullable_to_non_nullable
              as int,
      dTitle: dTitle == freezed
          ? _value.dTitle
          : dTitle // ignore: cast_nullable_to_non_nullable
              as String,
      dText: dText == freezed
          ? _value.dText
          : dText // ignore: cast_nullable_to_non_nullable
              as String,
      dThumbnail: dThumbnail == freezed
          ? _value.dThumbnail
          : dThumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      dPrivate: dPrivate == freezed
          ? _value.dPrivate
          : dPrivate // ignore: cast_nullable_to_non_nullable
              as String,
      dDiaryType: dDiaryType == freezed
          ? _value.dDiaryType
          : dDiaryType // ignore: cast_nullable_to_non_nullable
              as String,
      dgSEQ: dgSEQ == freezed
          ? _value.dgSEQ
          : dgSEQ // ignore: cast_nullable_to_non_nullable
              as int,
      insID: insID == freezed
          ? _value.insID
          : insID // ignore: cast_nullable_to_non_nullable
              as String,
      insDT: insDT == freezed
          ? _value.insDT
          : insDT // ignore: cast_nullable_to_non_nullable
              as DateTime,
      uptDT: uptDT == freezed
          ? _value.uptDT
          : uptDT // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$DiaryCopyWith<$Res> implements $DiaryCopyWith<$Res> {
  factory _$DiaryCopyWith(_Diary value, $Res Function(_Diary) then) =
      __$DiaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int dSEQ,
      String dTitle,
      String dText,
      String dThumbnail,
      String dPrivate,
      String dDiaryType,
      int dgSEQ,
      String insID,
      DateTime insDT,
      DateTime uptDT});
}

/// @nodoc
class __$DiaryCopyWithImpl<$Res> extends _$DiaryCopyWithImpl<$Res>
    implements _$DiaryCopyWith<$Res> {
  __$DiaryCopyWithImpl(_Diary _value, $Res Function(_Diary) _then)
      : super(_value, (v) => _then(v as _Diary));

  @override
  _Diary get _value => super._value as _Diary;

  @override
  $Res call({
    Object? dSEQ = freezed,
    Object? dTitle = freezed,
    Object? dText = freezed,
    Object? dThumbnail = freezed,
    Object? dPrivate = freezed,
    Object? dDiaryType = freezed,
    Object? dgSEQ = freezed,
    Object? insID = freezed,
    Object? insDT = freezed,
    Object? uptDT = freezed,
  }) {
    return _then(_Diary(
      dSEQ: dSEQ == freezed
          ? _value.dSEQ
          : dSEQ // ignore: cast_nullable_to_non_nullable
              as int,
      dTitle: dTitle == freezed
          ? _value.dTitle
          : dTitle // ignore: cast_nullable_to_non_nullable
              as String,
      dText: dText == freezed
          ? _value.dText
          : dText // ignore: cast_nullable_to_non_nullable
              as String,
      dThumbnail: dThumbnail == freezed
          ? _value.dThumbnail
          : dThumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      dPrivate: dPrivate == freezed
          ? _value.dPrivate
          : dPrivate // ignore: cast_nullable_to_non_nullable
              as String,
      dDiaryType: dDiaryType == freezed
          ? _value.dDiaryType
          : dDiaryType // ignore: cast_nullable_to_non_nullable
              as String,
      dgSEQ: dgSEQ == freezed
          ? _value.dgSEQ
          : dgSEQ // ignore: cast_nullable_to_non_nullable
              as int,
      insID: insID == freezed
          ? _value.insID
          : insID // ignore: cast_nullable_to_non_nullable
              as String,
      insDT: insDT == freezed
          ? _value.insDT
          : insDT // ignore: cast_nullable_to_non_nullable
              as DateTime,
      uptDT: uptDT == freezed
          ? _value.uptDT
          : uptDT // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Diary implements _Diary {
  _$_Diary(
      {required this.dSEQ,
      required this.dTitle,
      required this.dText,
      required this.dThumbnail,
      required this.dPrivate,
      required this.dDiaryType,
      required this.dgSEQ,
      required this.insID,
      required this.insDT,
      required this.uptDT});

  factory _$_Diary.fromJson(Map<String, dynamic> json) =>
      _$_$_DiaryFromJson(json);

  @override

  /// pk 일기 일련번호
  final int dSEQ;
  @override

  /// 일기 제목
  final String dTitle;
  @override

  /// 일기 내용
  final String dText;
  @override

  /// 썸네일 이미지 정보
  final String dThumbnail;
  @override

  /// 공개.비공개 플래그
  final String dPrivate;
  @override

  /// 일기 타입 : 개인 or 그룹
  final String dDiaryType;
  @override

  /// pk, fk 그룹 일련번호
  final int dgSEQ;
  @override

  /// fk 등록자
  final String insID;
  @override

  /// 등록일
  final DateTime insDT;
  @override

  /// 수정일
  final DateTime uptDT;

  @override
  String toString() {
    return 'Diary(dSEQ: $dSEQ, dTitle: $dTitle, dText: $dText, dThumbnail: $dThumbnail, dPrivate: $dPrivate, dDiaryType: $dDiaryType, dgSEQ: $dgSEQ, insID: $insID, insDT: $insDT, uptDT: $uptDT)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Diary &&
            (identical(other.dSEQ, dSEQ) ||
                const DeepCollectionEquality().equals(other.dSEQ, dSEQ)) &&
            (identical(other.dTitle, dTitle) ||
                const DeepCollectionEquality().equals(other.dTitle, dTitle)) &&
            (identical(other.dText, dText) ||
                const DeepCollectionEquality().equals(other.dText, dText)) &&
            (identical(other.dThumbnail, dThumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.dThumbnail, dThumbnail)) &&
            (identical(other.dPrivate, dPrivate) ||
                const DeepCollectionEquality()
                    .equals(other.dPrivate, dPrivate)) &&
            (identical(other.dDiaryType, dDiaryType) ||
                const DeepCollectionEquality()
                    .equals(other.dDiaryType, dDiaryType)) &&
            (identical(other.dgSEQ, dgSEQ) ||
                const DeepCollectionEquality().equals(other.dgSEQ, dgSEQ)) &&
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
      const DeepCollectionEquality().hash(dSEQ) ^
      const DeepCollectionEquality().hash(dTitle) ^
      const DeepCollectionEquality().hash(dText) ^
      const DeepCollectionEquality().hash(dThumbnail) ^
      const DeepCollectionEquality().hash(dPrivate) ^
      const DeepCollectionEquality().hash(dDiaryType) ^
      const DeepCollectionEquality().hash(dgSEQ) ^
      const DeepCollectionEquality().hash(insID) ^
      const DeepCollectionEquality().hash(insDT) ^
      const DeepCollectionEquality().hash(uptDT);

  @JsonKey(ignore: true)
  @override
  _$DiaryCopyWith<_Diary> get copyWith =>
      __$DiaryCopyWithImpl<_Diary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DiaryToJson(this);
  }
}

abstract class _Diary implements Diary {
  factory _Diary(
      {required int dSEQ,
      required String dTitle,
      required String dText,
      required String dThumbnail,
      required String dPrivate,
      required String dDiaryType,
      required int dgSEQ,
      required String insID,
      required DateTime insDT,
      required DateTime uptDT}) = _$_Diary;

  factory _Diary.fromJson(Map<String, dynamic> json) = _$_Diary.fromJson;

  @override

  /// pk 일기 일련번호
  int get dSEQ => throw _privateConstructorUsedError;
  @override

  /// 일기 제목
  String get dTitle => throw _privateConstructorUsedError;
  @override

  /// 일기 내용
  String get dText => throw _privateConstructorUsedError;
  @override

  /// 썸네일 이미지 정보
  String get dThumbnail => throw _privateConstructorUsedError;
  @override

  /// 공개.비공개 플래그
  String get dPrivate => throw _privateConstructorUsedError;
  @override

  /// 일기 타입 : 개인 or 그룹
  String get dDiaryType => throw _privateConstructorUsedError;
  @override

  /// pk, fk 그룹 일련번호
  int get dgSEQ => throw _privateConstructorUsedError;
  @override

  /// fk 등록자
  String get insID => throw _privateConstructorUsedError;
  @override

  /// 등록일
  DateTime get insDT => throw _privateConstructorUsedError;
  @override

  /// 수정일
  DateTime get uptDT => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DiaryCopyWith<_Diary> get copyWith => throw _privateConstructorUsedError;
}
