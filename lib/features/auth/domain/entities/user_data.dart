import 'package:equatable/equatable.dart';

class UserData extends Equatable {
final String name;
final String email;
final int age;
final List<String> wantedskills;
final List<String> grantedskills;
const UserData({
    required this.name,
    required this.email,
    required this.age,
    required this.wantedskills,
    required this.grantedskills,
});

  @override
  // TODO: implement props
  List<Object?> get props => [
    name,
    email,
    age,
    wantedskills,
    grantedskills,
  ];
}