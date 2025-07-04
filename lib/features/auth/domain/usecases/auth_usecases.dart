import 'package:dartz/dartz.dart';
import 'package:skillswap1/core/errors/failure.dart';
import 'package:skillswap1/features/auth/domain/entities/user_data.dart';
import 'package:skillswap1/features/auth/domain/repositories/auth_repo.dart';

class AuthPostDataUseCase{
  final AuthRepo authrepo;
  AuthPostDataUseCase({required this.authrepo});
  Future<Either<Failure,Map>> call({required Map<String, dynamic> userdata , required String userId}){
    return authrepo.setUserData(userdata: userdata, userId: userId);
  }
}
class AuthGetDataUseCase{
  final AuthRepo authrepo;
  AuthGetDataUseCase({required this.authrepo});
  Future<Either<Failure,UserData>> call(String userId){
    return authrepo.getUserData(userId);
  }
}
class AuthenticateUserUseCase{
    final AuthRepo authrepo;
  AuthenticateUserUseCase({required this.authrepo});
  Future<Either<Failure,Map<String , dynamic>>> call({required String email,required String password}){
    return authrepo.authenticateUser(email: email, password: password);
  }
}