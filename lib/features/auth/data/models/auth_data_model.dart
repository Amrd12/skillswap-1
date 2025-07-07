import 'package:skillswap1/features/auth/domain/entities/user_data.dart';
class AuthDataModel extends UserData {
  const AuthDataModel({
  required super.name,
  required super.email,
  required super.age,
  required super.wantedskills,
  required super.grantedskills,});

  factory AuthDataModel.fromJson(Map<String, dynamic> json) {
    return AuthDataModel(
      name: json['name'],
      email: json['email'],
      age: json['age'],
      wantedskills: json['wantedskills'],
      grantedskills: json['grantedskills'],);
  }
  
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'age': age,
      'wantedskills': wantedskills,
      'grantedskills': grantedskills,
    };
  }
}