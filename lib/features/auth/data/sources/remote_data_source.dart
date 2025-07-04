import 'package:skillswap1/core/errors/exceptions.dart';
import 'package:skillswap1/core/services/firebase/authentication.dart';
import 'package:skillswap1/core/validators/all_validations.dart';

import '../../../../core/services/firebase/firestore.dart';

class AuthRemoteDataSource {
  final FireStoreService fireStoreService;
  final Authentication authenticationService;

  AuthRemoteDataSource({required this.fireStoreService ,required this.authenticationService});

  Future<Map<String, dynamic>> getUserData(String userId) async {
    return await fireStoreService.getUserData(userId);
  }

  Future<Map<String, dynamic>> setUserData(String userUid ,Map<String, dynamic> userData) async {
    return await fireStoreService.setUserData(userUid,userData);
  }

  Future<Map<String, dynamic>> updateUserData(String userId, Map<String, dynamic> userData) async {
    return await fireStoreService.updateUserData(userId, userData);
  }

  Future<Map<String, dynamic>> deleteUserData(String userId) async {
    return await fireStoreService.deleteUserData(userId);
  }
  Future<Map<String, dynamic>> authenticateUser({required String email , required String password}) async {
    if(!Validations.isValidEmail(email) ){
      throw InvalidEmailException();
    } else if(!Validations.isValidPassword(password)){
      throw InvalidPasswordException();
    }
    return await authenticationService.signInWithEmailAndPassword(email, password);
  }
}