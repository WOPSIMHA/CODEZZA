import 'package:equatable/equatable.dart';

// 친구
class Friends  extends Equatable{
  final String followingID;
  final String followedID;
  final String insID;
  final DateTime insDT;

  Friends(
    this.followingID,
    this.followedID,
    this.insID,
    this.insDT,
  );

  @override
  List<Object> get props => throw UnimplementedError();
}
