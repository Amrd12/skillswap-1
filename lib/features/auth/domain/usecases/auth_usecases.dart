import 'package:dartz/dartz.dart';
import 'package:skillswap1/core/errors/failure.dart';
import 'package:skillswap1/features/auth/domain/entities/user_data.dart';
import 'package:skillswap1/features/auth/domain/repositories/auth_repo.dart';

class AuthPostDataUseCase{
  final AuthRepo authrepo;
  AuthPostDataUseCase({required this.authrepo});
  Future<Either<Failure,UserData>> call(Map<String,dynamic> userdata){
    return authrepo.postUserData(userdata);
  }
}
class AuthGetDataUseCase{
  final AuthRepo authrepo;
  AuthGetDataUseCase({required this.authrepo});
  Future<Either<Failure,UserData>> call(Map<String,dynamic> userdata){
    return authrepo.getUserData(userdata);
  }
}
class AuthenticateUserUseCase{
    final AuthRepo authrepo;
  AuthenticateUserUseCase({required this.authrepo});
  Future<Either<Failure,bool>> call(Map<String,dynamic> userdata){
    return authrepo.authenticateUser(userdata);
  }
}