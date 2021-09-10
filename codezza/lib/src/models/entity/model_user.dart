import 'package:equatable/equatable.dart';

class User extends Equatable {
  ///pk 아이디
  late final String? uId;

  ///비밀번호
  late final String? uPw;

  ///닉네임
  late final String? uName;

  ///프로필 사진 경로
  final String? uPhoto;

  ///자기소개
  final String? uComment;

  ///관심분야
  final String? uCategory;

  ///계정 공개 비공개 여부
  final String? uPrivate;

  ///등록자
  final String? insID;

  ///등록일
  final DateTime? insDT;

  ///수정일
  final DateTime? uptDT;

  @override
  List<Object?> get props => [uId, uPw];

  User({
    this.uId,
    this.uPw,
    this.uName,
    this.uPhoto,
    this.uComment,
    this.uCategory,
    this.uPrivate,
    this.insID,
    this.insDT,
    this.uptDT,
  });

  @override
  String toString() {
    return 'User{' +
        ' uId: $uId,' +
        ' uPw: $uPw,' +
        ' uName: $uName,' +
        ' uPhoto: $uPhoto,' +
        ' uComment: $uComment,' +
        ' uCategory: $uCategory,' +
        ' uPrivate: $uPrivate,' +
        ' insID: $insID,' +
        ' insDT: $insDT,' +
        ' uptDT: $uptDT,' +
        '}';
  }

  User copyWith({
    String? uId,
    String? uPw,
    String? uName,
    String? uPhoto,
    String? uComment,
    String? uCategory,
    String? uPrivate,
    String? insID,
    DateTime? insDT,
    DateTime? uptDT,
  }) {
    return User(
      uId: uId ?? this.uId,
      uPw: uPw ?? this.uPw,
      uName: uName ?? this.uName,
      uPhoto: uPhoto ?? this.uPhoto,
      uComment: uComment ?? this.uComment,
      uCategory: uCategory ?? this.uCategory,
      uPrivate: uPrivate ?? this.uPrivate,
      insID: insID ?? this.insID,
      insDT: insDT ?? this.insDT,
      uptDT: uptDT ?? this.uptDT,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uId': this.uId,
      'uPw': this.uPw,
      'uName': this.uName,
      'uPhoto': this.uPhoto,
      'uComment': this.uComment,
      'uCategory': this.uCategory,
      'uPrivate': this.uPrivate,
      'insID': this.insID,
      'insDT': this.insDT,
      'uptDT': this.uptDT,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      uId: map['uId'] as String,
      uPw: map['uPw'] as String,
      uName: map['uName'] as String,
      uPhoto: map['uPhoto'] as String,
      uComment: map['uComment'] as String,
      uCategory: map['uCategory'] as String,
      uPrivate: map['uPrivate'] as String,
      insID: map['insID'] as String,
      insDT: map['insDT'] as DateTime,
      uptDT: map['uptDT'] as DateTime,
    );
  }
}
