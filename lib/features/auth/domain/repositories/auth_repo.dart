import 'package:dartz/dartz.dart';
import 'package:skillswap1/features/auth/domain/entities/user_data.dart';

import '../../../../core/errors/failure.dart';

abstract class AuthRepo {
  Future<Either<Failure,UserData>> postUserData(Map<String,dynamic> userdata);
  Future<Either<Failure,UserData>> getUserData(Map<String,dynamic> userdata);
  Future<Either<Failure,bool>> authenticateUser(Map<String,dynamic> credentials);
}