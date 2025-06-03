import 'package:skillswap1/features/auth/domain/entities/user_data.dart';

class AuthDataModel extends UserData {
  AuthDataModel({
  required super.name,
  required super.email,
  required super.password,
  required super.age,
  required super.wantedskills,
  required super.grantedskills,
  required super.image});
  factory AuthDataModel.fromJson(Map<String, dynamic> json) {
    return AuthDataModel(
      name: json['name'],
      email: json['email'],
      password: json['password'],
      age: json['age'],
      wantedskills: json['wantedskills'],
      grantedskills: json['grantedskills'],
      image: json['image']);
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'age': age,
      'wantedskills': wantedskills,
      'grantedskills': grantedskills,
      'image': image,
    };
  }
}