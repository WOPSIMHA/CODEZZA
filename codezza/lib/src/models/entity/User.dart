import 'package:equatable/equatable.dart';

// 사용자
class User extends Equatable {
  final String uID;
  final String uPW;
  final String uName;
  final String uPhoto;
  final String uComment;
  final String uCategory;
  final String uPrivate;
  final String insID;
  final DateTime insDT;
  final DateTime uptDT;

  User(
    this.uID,
    this.uPW,
    this.uName,
    this.uPhoto,
    this.uComment,
    this.uCategory,
    this.uPrivate,
    this.insID,
    this.insDT,
    this.uptDT,
  );

  @override
  List<Object> get props => [uID];
}
