import 'package:dartz/dartz.dart';
import 'package:skillswap1/core/errors/exceptions.dart';
import 'package:skillswap1/features/Home/data/sources/remote_data_source.dart';
import '../../../../core/errors/failure.dart';
import '../../domain/entity/home_page_data.dart';
import '../../domain/repositories/Home_page_repo.dart';
class HomePageDataRepo implements HomePageRepository {
  HomePageDataRepo({required this.remoteDataSource});
  final RemoteDataSource remoteDataSource;
  @override
  Future<Either<Failure, HomePageData>> fetchHomePageData(String userId) async{
    try{
      return Right( await remoteDataSource.fetchUserData(userId) );
    } on FireStoreException{
      return Left(FireStoreFailure());
    }
    
  }}