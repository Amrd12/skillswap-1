import 'package:dartz/dartz.dart';
import 'package:skillswap1/features/auth/domain/entities/user_data.dart';

import '../../../../core/errors/failure.dart';

abstract class AuthRepo {
  Future<Either<Failure,Map>> setUserData({required Map<String, dynamic> userdata , required String userId});
  Future<Either<Failure,Map>> updateUserData({required Map<String, dynamic> userdata , required String userId});
  Future<Either<Failure,UserData>> getUserData(String userId);
  Future<Either<Failure,Map<String , dynamic>>> authenticateUser({required String email,required String password});
}