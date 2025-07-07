import 'package:dartz/dartz.dart';
import 'package:skillswap1/core/errors/exceptions.dart';
import 'package:skillswap1/core/errors/failure.dart';
import 'package:skillswap1/features/auth/data/sources/remote_data_source.dart';
import 'package:skillswap1/features/auth/domain/entities/user_data.dart';
import '../../domain/repositories/auth_repo.dart';
import '../models/auth_data_model.dart';
import 'package:injectable/injectable.dart';

@lazySingleton(as AuthRepo)
class AuthRepoImpl implements AuthRepo{
  AuthRemoteDataSource authRemoteDataSource;
  AuthRepoImpl({required this.authRemoteDataSource});
  @override
  Future<Either<Failure, Map<String , dynamic>>> authenticateUser({required String email,required String password}) async{
    try{
      return await authRemoteDataSource.authenticateUser(
        email: email,
        password:email
      ).then((value) => Right(value));
    } on UserNotFoundException {
      return Left(UserNotFoundFailure());
    }on UserAlreadyExistsException{
      return Left(UserAlreadyExistsFailure());
    }
  }

  @override
  Future<Either<Failure, UserData>> getUserData(String userId) async{
    try {
      return await authRemoteDataSource.getUserData(userId).then((value) => Right(AuthDataModel.fromJson(value)));
    } on UserNotFoundException {
      return Left(UserNotFoundFailure());
    }
  }

  @override
  Future<Either<Failure, Map>> setUserData({required String userId, required Map<String, dynamic> userdata}) async {
    try{
      return await authRemoteDataSource.setUserData(userId, userdata).then((value) => Right(value));
    }on FireStoreException{
      return Left(FireStoreFailure());
    }on UserAlreadyExistsException{
      return Left(UserAlreadyExistsFailure());
    }on UserNotFoundException{
      return Left(UserNotFoundFailure());}
  }
  
  @override
  Future<Either<Failure, Map>> updateUserData({required Map<String, dynamic> userdata, required String userId}) async{
    try{
      return await authRemoteDataSource.updateUserData(userId, userdata).then((value)=> Right(value));
    }on FireStoreException{
      return Left(FireStoreFailure());
    }on UserAlreadyExistsException{
      return Left(UserAlreadyExistsFailure());
    }on UserNotFoundException{
      return Left(UserNotFoundFailure());}
  }

}