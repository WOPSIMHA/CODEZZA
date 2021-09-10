import 'package:equatable/equatable.dart';

class Photo extends Equatable {
  /// pk 사진 고유 key
  final String? pUUID;

  /// pk fk 일기 일련번호
  final int? pgSEQ;

  /// 파일 저장명
  final String? pSaveName;

  /// 등록자
  final String? insID;

  /// 등록일
  final DateTime? insDT;

  @override
  List<Object?> get props => [pUUID, pgSEQ, insID];

  const Photo({
    this.pUUID,
    this.pgSEQ,
    this.pSaveName,
    this.insID,
    this.insDT,
  });

  @override
  String toString() {
    return 'Photo{' +
        ' pUUID: $pUUID,' +
        ' pgSEQ: $pgSEQ,' +
        ' pSaveName: $pSaveName,' +
        ' insID: $insID,' +
        ' insDT: $insDT,' +
        '}';
  }

  Photo copyWith({
    String? pUUID,
    int? pgSEQ,
    String? pSaveName,
    String? insID,
    DateTime? insDT,
  }) {
    return Photo(
      pUUID: pUUID ?? this.pUUID,
      pgSEQ: pgSEQ ?? this.pgSEQ,
      pSaveName: pSaveName ?? this.pSaveName,
      insID: insID ?? this.insID,
      insDT: insDT ?? this.insDT,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'pUUID': this.pUUID,
      'pgSEQ': this.pgSEQ,
      'pSaveName': this.pSaveName,
      'insID': this.insID,
      'insDT': this.insDT,
    };
  }

  factory Photo.fromMap(Map<String, dynamic> map) {
    return Photo(
      pUUID: map['pUUID'] as String,
      pgSEQ: map['pgSEQ'] as int,
      pSaveName: map['pSaveName'] as String,
      insID: map['insID'] as String,
      insDT: map['insDT'] as DateTime,
    );
  }
}