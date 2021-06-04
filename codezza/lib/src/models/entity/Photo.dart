import 'package:equatable/equatable.dart';

// 사진
class Photo extends Equatable{
  final String pUUID;
  final int pgSEQ;
  final String pSaveName;
  final String insID;
  final DateTime insDT;

  Photo(
    this.pUUID,
    this.pgSEQ,
    this.pSaveName,
    this.insID,
    this.insDT,
  );

  @override
  List<Object> get props => throw UnimplementedError();
}
