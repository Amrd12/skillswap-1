import 'package:cloud_firestore/cloud_firestore.dart';
import '../../constant values/str_values.dart' show ErrorMessages;

class FireStoreService{
  final _firebase=FirebaseFirestore.instance;
  // this an function to get all users data
  Future<Map<String , dynamic>> getUserData(String userId) async{
    try {
      DocumentSnapshot snapshot = await _firebase.collection('users').doc(userId).get();
      if (snapshot.exists) {
        Map<String, dynamic> userData = snapshot.data() as Map<String, dynamic>;
        return userData;
      } else {
        return {"error":ErrorMessages.userNotFound}; // User not found
      }
    } catch (e) {
      return {"error":ErrorMessages.firestoreerror};
    }

  }
  // this an function to set user data
  // it will add a new user to the firestore
  Future<Map<String , dynamic>> setUserData(String userUid ,Map<String, dynamic> userData) async {
    try {
      await _firebase.collection('users').doc(userUid).set(userData);
      return {"success": true};
    } catch (e) {
      return {"success": false};
    }
  }
  // this an function to update user data
  // it will update the user data in the firestore
  Future<Map<String , dynamic>> updateUserData(String userId, Map<String, dynamic> userData) async {
    try {
      await _firebase.collection('users').doc(userId).update(userData);
      return {"success": true};
    } catch (e) {
      return {"success": false};
    }
  }
  // this an function to delete user data
  // it will delete the user data from the firestore
  Future<Map<String , dynamic>> deleteUserData(String userId) async {
    try {
      await _firebase.collection('users').doc(userId).delete();
      return {"success": true};
    } catch (e) {
      return {"success": false};
    }
  }
}