import 'package:equatable/equatable.dart';

class UserData extends Equatable {
final String name;
final String email;
final String password;
final int age;
final List<String> wantedskills;
final List<String> grantedskills;
final String image;
UserData({
    required this.name,
    required this.email,
    required this.password,
    required this.age,
    required this.wantedskills,
    required this.grantedskills,
    required this.image,
});

  @override
  // TODO: implement props
  List<Object?> get props => [
    name,
    email,
    password,
    age,
    wantedskills,
    grantedskills,
    image,
  ];
}