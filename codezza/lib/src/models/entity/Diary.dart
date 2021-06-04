import 'package:equatable/equatable.dart';

// 일기장
class Diary extends Equatable{
  final int dSEQ;
  final String dTitle;
  final String dText;
  final String dThumbnail;
  final String dPrivate;
  final String dDiarytype;
  final int dgSEQ;
  final String insID;
  final DateTime insDT;
  final DateTime uptDT;

  Diary(
    this.dSEQ,
    this.dTitle,
    this.dText,
    this.dThumbnail,
    this.dPrivate,
    this.dDiarytype,
    this.dgSEQ,
    this.insID,
    this.insDT,
    this.uptDT,
  );

  @override
  List<Object> get props => throw UnimplementedError();
}
