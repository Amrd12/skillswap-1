import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'package:skillswap1/core/errors/failure.dart';

import 'package:skillswap1/features/auth/domain/entities/user_data.dart';

import '../../domain/repositories/auth_repo.dart';

class AuthRepoImpl implements AuthRepo{
  @override
  Future<Either<Failure, bool>> authenticateUser(Map<String, dynamic> credentials) {
    if(!kIsWeb){
      
    }
  }

  @override
  Future<Either<Failure, UserData>> getUserData(Map<String, dynamic> userdata) {
    // TODO: implement getUserData
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserData>> postUserData(Map<String, dynamic> userdata) {
    // TODO: implement postUserData
    throw UnimplementedError();
  }

}