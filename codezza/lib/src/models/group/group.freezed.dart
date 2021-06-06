// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Group _$GroupFromJson(Map<String, dynamic> json) {
  return _Group.fromJson(json);
}

/// @nodoc
class _$GroupTearOff {
  const _$GroupTearOff();

  _Group call(
      {required int gSEQ,
      required String gUID,
      required String gName,
      required String gAuthority,
      required String insID,
      required DateTime insDT,
      required String uptID,
      required DateTime uptDT}) {
    return _Group(
      gSEQ: gSEQ,
      gUID: gUID,
      gName: gName,
      gAuthority: gAuthority,
      insID: insID,
      insDT: insDT,
      uptID: uptID,
      uptDT: uptDT,
    );
  }

  Group fromJson(Map<String, Object> json) {
    return Group.fromJson(json);
  }
}

/// @nodoc
const $Group = _$GroupTearOff();

/// @nodoc
mixin _$Group {
  /// pk 그룹 일련번호
  int get gSEQ => throw _privateConstructorUsedError;

  /// pk, fk 구성원 아이디
  String get gUID => throw _privateConstructorUsedError;

  /// 그룹명
  String get gName => throw _privateConstructorUsedError;

  /// 그룹 내 권한
  String get gAuthority => throw _privateConstructorUsedError;

  /// 등록자
  String get insID => throw _privateConstructorUsedError;

  /// 등록일
  DateTime get insDT => throw _privateConstructorUsedError;

  /// 수정자
  String get uptID => throw _privateConstructorUsedError;

  /// 수정일
  DateTime get uptDT => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupCopyWith<Group> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res>;
  $Res call(
      {int gSEQ,
      String gUID,
      String gName,
      String gAuthority,
      String insID,
      DateTime insDT,
      String uptID,
      DateTime uptDT});
}

/// @nodoc
class _$GroupCopyWithImpl<$Res> implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._value, this._then);

  final Group _value;
  // ignore: unused_field
  final $Res Function(Group) _then;

  @override
  $Res call({
    Object? gSEQ = freezed,
    Object? gUID = freezed,
    Object? gName = freezed,
    Object? gAuthority = freezed,
    Object? insID = freezed,
    Object? insDT = freezed,
    Object? uptID = freezed,
    Object? uptDT = freezed,
  }) {
    return _then(_value.copyWith(
      gSEQ: gSEQ == freezed
          ? _value.gSEQ
          : gSEQ // ignore: cast_nullable_to_non_nullable
              as int,
      gUID: gUID == freezed
          ? _value.gUID
          : gUID // ignore: cast_nullable_to_non_nullable
              as String,
      gName: gName == freezed
          ? _value.gName
          : gName // ignore: cast_nullable_to_non_nullable
              as String,
      gAuthority: gAuthority == freezed
          ? _value.gAuthority
          : gAuthority // ignore: cast_nullable_to_non_nullable
              as String,
      insID: insID == freezed
          ? _value.insID
          : insID // ignore: cast_nullable_to_non_nullable
              as String,
      insDT: insDT == freezed
          ? _value.insDT
          : insDT // ignore: cast_nullable_to_non_nullable
              as DateTime,
      uptID: uptID == freezed
          ? _value.uptID
          : uptID // ignore: cast_nullable_to_non_nullable
              as String,
      uptDT: uptDT == freezed
          ? _value.uptDT
          : uptDT // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$GroupCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$GroupCopyWith(_Group value, $Res Function(_Group) then) =
      __$GroupCopyWithImpl<$Res>;
  @override
  $Res call(
      {int gSEQ,
      String gUID,
      String gName,
      String gAuthority,
      String insID,
      DateTime insDT,
      String uptID,
      DateTime uptDT});
}

/// @nodoc
class __$GroupCopyWithImpl<$Res> extends _$GroupCopyWithImpl<$Res>
    implements _$GroupCopyWith<$Res> {
  __$GroupCopyWithImpl(_Group _value, $Res Function(_Group) _then)
      : super(_value, (v) => _then(v as _Group));

  @override
  _Group get _value => super._value as _Group;

  @override
  $Res call({
    Object? gSEQ = freezed,
    Object? gUID = freezed,
    Object? gName = freezed,
    Object? gAuthority = freezed,
    Object? insID = freezed,
    Object? insDT = freezed,
    Object? uptID = freezed,
    Object? uptDT = freezed,
  }) {
    return _then(_Group(
      gSEQ: gSEQ == freezed
          ? _value.gSEQ
          : gSEQ // ignore: cast_nullable_to_non_nullable
              as int,
      gUID: gUID == freezed
          ? _value.gUID
          : gUID // ignore: cast_nullable_to_non_nullable
              as String,
      gName: gName == freezed
          ? _value.gName
          : gName // ignore: cast_nullable_to_non_nullable
              as String,
      gAuthority: gAuthority == freezed
          ? _value.gAuthority
          : gAuthority // ignore: cast_nullable_to_non_nullable
              as String,
      insID: insID == freezed
          ? _value.insID
          : insID // ignore: cast_nullable_to_non_nullable
              as String,
      insDT: insDT == freezed
          ? _value.insDT
          : insDT // ignore: cast_nullable_to_non_nullable
              as DateTime,
      uptID: uptID == freezed
          ? _value.uptID
          : uptID // ignore: cast_nullable_to_non_nullable
              as String,
      uptDT: uptDT == freezed
          ? _value.uptDT
          : uptDT // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Group implements _Group {
  _$_Group(
      {required this.gSEQ,
      required this.gUID,
      required this.gName,
      required this.gAuthority,
      required this.insID,
      required this.insDT,
      required this.uptID,
      required this.uptDT});

  factory _$_Group.fromJson(Map<String, dynamic> json) =>
      _$_$_GroupFromJson(json);

  @override

  /// pk 그룹 일련번호
  final int gSEQ;
  @override

  /// pk, fk 구성원 아이디
  final String gUID;
  @override

  /// 그룹명
  final String gName;
  @override

  /// 그룹 내 권한
  final String gAuthority;
  @override

  /// 등록자
  final String insID;
  @override

  /// 등록일
  final DateTime insDT;
  @override

  /// 수정자
  final String uptID;
  @override

  /// 수정일
  final DateTime uptDT;

  @override
  String toString() {
    return 'Group(gSEQ: $gSEQ, gUID: $gUID, gName: $gName, gAuthority: $gAuthority, insID: $insID, insDT: $insDT, uptID: $uptID, uptDT: $uptDT)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Group &&
            (identical(other.gSEQ, gSEQ) ||
                const DeepCollectionEquality().equals(other.gSEQ, gSEQ)) &&
            (identical(other.gUID, gUID) ||
                const DeepCollectionEquality().equals(other.gUID, gUID)) &&
            (identical(other.gName, gName) ||
                const DeepCollectionEquality().equals(other.gName, gName)) &&
            (identical(other.gAuthority, gAuthority) ||
                const DeepCollectionEquality()
                    .equals(other.gAuthority, gAuthority)) &&
            (identical(other.insID, insID) ||
                const DeepCollectionEquality().equals(other.insID, insID)) &&
            (identical(other.insDT, insDT) ||
                const DeepCollectionEquality().equals(other.insDT, insDT)) &&
            (identical(other.uptID, uptID) ||
                const DeepCollectionEquality().equals(other.uptID, uptID)) &&
            (identical(other.uptDT, uptDT) ||
                const DeepCollectionEquality().equals(other.uptDT, uptDT)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gSEQ) ^
      const DeepCollectionEquality().hash(gUID) ^
      const DeepCollectionEquality().hash(gName) ^
      const DeepCollectionEquality().hash(gAuthority) ^
      const DeepCollectionEquality().hash(insID) ^
      const DeepCollectionEquality().hash(insDT) ^
      const DeepCollectionEquality().hash(uptID) ^
      const DeepCollectionEquality().hash(uptDT);

  @JsonKey(ignore: true)
  @override
  _$GroupCopyWith<_Group> get copyWith =>
      __$GroupCopyWithImpl<_Group>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GroupToJson(this);
  }
}

abstract class _Group implements Group {
  factory _Group(
      {required int gSEQ,
      required String gUID,
      required String gName,
      required String gAuthority,
      required String insID,
      required DateTime insDT,
      required String uptID,
      required DateTime uptDT}) = _$_Group;

  factory _Group.fromJson(Map<String, dynamic> json) = _$_Group.fromJson;

  @override

  /// pk 그룹 일련번호
  int get gSEQ => throw _privateConstructorUsedError;
  @override

  /// pk, fk 구성원 아이디
  String get gUID => throw _privateConstructorUsedError;
  @override

  /// 그룹명
  String get gName => throw _privateConstructorUsedError;
  @override

  /// 그룹 내 권한
  String get gAuthority => throw _privateConstructorUsedError;
  @override

  /// 등록자
  String get insID => throw _privateConstructorUsedError;
  @override

  /// 등록일
  DateTime get insDT => throw _privateConstructorUsedError;
  @override

  /// 수정자
  String get uptID => throw _privateConstructorUsedError;
  @override

  /// 수정일
  DateTime get uptDT => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroupCopyWith<_Group> get copyWith => throw _privateConstructorUsedError;
}
