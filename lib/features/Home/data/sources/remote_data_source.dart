import 'package:skillswap1/core/services/firebase/firestore.dart';
import '../models/model.dart';
class RemoteDataSource {
  RemoteDataSource({required this.fireStoreService});
  final FireStoreService fireStoreService;
  Future<HomePageModel> fetchUserData(String userId) async{
    final data=await fireStoreService.getUserData(userId);
    final userData=HomePageModel.fromJson(data);
    return userData;
  }
}