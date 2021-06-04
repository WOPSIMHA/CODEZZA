import 'package:equatable/equatable.dart';

// 그룹
class Group extends Equatable{
  final int gSEQ;
  final String gName;
  final String gUID;
  final String gAuthority;
  final String insID;
  final DateTime insDT;
  final String uptID;
  final DateTime uptDT;

  Group(
    this.gSEQ,
    this.gName,
    this.gUID,
    this.gAuthority,
    this.insID,
    this.insDT,
    this.uptID,
    this.uptDT,
  );

  @override
  List<Object> get props => throw UnimplementedError();
}
