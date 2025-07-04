import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entity/home_page_data.dart';

abstract class HomePageRepository {
  Future<Either<Failure , HomePageData>> fetchHomePageData(String userId);
}