import 'package:equatable/equatable.dart';

class Diary extends Equatable {
  /// pk 일기 일련번호
  final int? dSEQ;

  /// 일기 제목
  final String? dTitle;

  /// 일기 내용
  final String? dText;

  /// 썸네일 이미지 정보
  final String? dThumbnail;

  /// 공개.비공개 플래그
  final String? dPrivate;

  /// 일기 타입 : 개인 or 그룹
  final String? dDiaryType;

  /// pk; fk 그룹 일련번호
  final int? dgSEQ;

  /// fk 등록자
  final String? insID;

  /// 등록일
  final DateTime? insDT;

  /// 수정일
  final DateTime? uptDT;

  @override
  List<Object?> get props => [dSEQ, dgSEQ, insID];

  const Diary({
    this.dSEQ,
    this.dTitle,
    this.dText,
    this.dThumbnail,
    this.dPrivate,
    this.dDiaryType,
    this.dgSEQ,
    this.insID,
    this.insDT,
    this.uptDT,
  });

  @override
  String toString() {
    return 'Diary{' +
        ' dSEQ: $dSEQ,' +
        ' dTitle: $dTitle,' +
        ' dText: $dText,' +
        ' dThumbnail: $dThumbnail,' +
        ' dPrivate: $dPrivate,' +
        ' dDiaryType: $dDiaryType,' +
        ' dgSEQ: $dgSEQ,' +
        ' insID: $insID,' +
        ' insDT: $insDT,' +
        ' uptDT: $uptDT,' +
        '}';
  }

  Diary copyWith({
    int? dSEQ,
    String? dTitle,
    String? dText,
    String? dThumbnail,
    String? dPrivate,
    String? dDiaryType,
    int? dgSEQ,
    String? insID,
    DateTime? insDT,
    DateTime? uptDT,
  }) {
    return Diary(
      dSEQ: dSEQ ?? this.dSEQ,
      dTitle: dTitle ?? this.dTitle,
      dText: dText ?? this.dText,
      dThumbnail: dThumbnail ?? this.dThumbnail,
      dPrivate: dPrivate ?? this.dPrivate,
      dDiaryType: dDiaryType ?? this.dDiaryType,
      dgSEQ: dgSEQ ?? this.dgSEQ,
      insID: insID ?? this.insID,
      insDT: insDT ?? this.insDT,
      uptDT: uptDT ?? this.uptDT,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'dSEQ': this.dSEQ,
      'dTitle': this.dTitle,
      'dText': this.dText,
      'dThumbnail': this.dThumbnail,
      'dPrivate': this.dPrivate,
      'dDiaryType': this.dDiaryType,
      'dgSEQ': this.dgSEQ,
      'insID': this.insID,
      'insDT': this.insDT,
      'uptDT': this.uptDT,
    };
  }

  factory Diary.fromMap(Map<String, dynamic> map) {
    return Diary(
      dSEQ: map['dSEQ'] as int,
      dTitle: map['dTitle'] as String,
      dText: map['dText'] as String,
      dThumbnail: map['dThumbnail'] as String,
      dPrivate: map['dPrivate'] as String,
      dDiaryType: map['dDiaryType'] as String,
      dgSEQ: map['dgSEQ'] as int,
      insID: map['insID'] as String,
      insDT: map['insDT'] as DateTime,
      uptDT: map['uptDT'] as DateTime,
    );
  }
}
