import 'package:equatable/equatable.dart';

class User extends Equatable{
  final String userName;
  final String phoneNumber;
  final String userImage;
  User({required this.userName, required this.phoneNumber, required this.userImage});

  @override
  List<Object> get props => [userName,phoneNumber,userImage];

}