import 'package:equatable/equatable.dart';

class Group extends Equatable{
  /// pk 그룹 일련번호
  final int? gSEQ;

  /// pk; fk 구성원 아이디
  final String? gUID;

  /// 그룹명
  final String? gName;

  /// 그룹 내 권한
  final String? gAuthority;

  /// 등록자
  final String? insID;

  /// 등록일
  final DateTime? insDT;

  /// 수정자
  final String? uptID;

  /// 수정일
  final DateTime? uptDT;

  @override
  List<Object?> get props => [gSEQ, gUID, insID, uptID];

  const Group({
    this.gSEQ,
    this.gUID,
    this.gName,
    this.gAuthority,
    this.insID,
    this.insDT,
    this.uptID,
    this.uptDT,
  });

  @override
  String toString() {
    return 'Group{' +
        ' gSEQ: $gSEQ,' +
        ' gUID: $gUID,' +
        ' gName: $gName,' +
        ' gAuthority: $gAuthority,' +
        ' insID: $insID,' +
        ' insDT: $insDT,' +
        ' uptID: $uptID,' +
        ' uptDT: $uptDT,' +
        '}';
  }

  Group copyWith({
    int? gSEQ,
    String? gUID,
    String? gName,
    String? gAuthority,
    String? insID,
    DateTime? insDT,
    String? uptID,
    DateTime? uptDT,
  }) {
    return Group(
      gSEQ: gSEQ ?? this.gSEQ,
      gUID: gUID ?? this.gUID,
      gName: gName ?? this.gName,
      gAuthority: gAuthority ?? this.gAuthority,
      insID: insID ?? this.insID,
      insDT: insDT ?? this.insDT,
      uptID: uptID ?? this.uptID,
      uptDT: uptDT ?? this.uptDT,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'gSEQ': this.gSEQ,
      'gUID': this.gUID,
      'gName': this.gName,
      'gAuthority': this.gAuthority,
      'insID': this.insID,
      'insDT': this.insDT,
      'uptID': this.uptID,
      'uptDT': this.uptDT,
    };
  }

  factory Group.fromMap(Map<String, dynamic> map) {
    return Group(
      gSEQ: map['gSEQ'] as int,
      gUID: map['gUID'] as String,
      gName: map['gName'] as String,
      gAuthority: map['gAuthority'] as String,
      insID: map['insID'] as String,
      insDT: map['insDT'] as DateTime,
      uptID: map['uptID'] as String,
      uptDT: map['uptDT'] as DateTime,
    );
  }
}
