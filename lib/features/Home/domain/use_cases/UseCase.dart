import 'package:dartz/dartz.dart';
import 'package:skillswap1/features/Home/domain/entity/home_page_data.dart';

import '../../../../core/errors/failure.dart';
import '../repositories/Home_page_repo.dart';

class Usecase {
  final HomePageRepository homePageRepository;
  Usecase({required this.homePageRepository});
  Future<Either<Failure,HomePageData>> fetchHomePageData(String userId) {
    return homePageRepository.fetchHomePageData(userId);
  }
}