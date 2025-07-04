import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuth, UserCredential;

import '../../constant values/str_values.dart';

class Authentication {
  // This class is responsible for handling user authentication
  // It will use Firebase Authentication to sign in, sign up, and sign out users

  // Sign in with email and password
  Future<Map<String, dynamic>> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      if (userCredential.user?.emailVerified == false) {
        // If the email is not verified, send a verification email
        await userCredential.user?.sendEmailVerification();
        return {"result": ErrorMessages.unverifiedUser};
      }
      return {"userId": userCredential.user?.uid};
    } catch (e) {
      return {"error":ErrorMessages.signInError};
    }
  }

  // Sign up with email and password
  Future<Map<String, dynamic>> signUpWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
       // Send verification email
      await userCredential.user?.sendEmailVerification();
      return {"userId": userCredential.user?.uid};
    } catch (e) {
      return {"error": e.toString()};
    }
  }

  // Sign out
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
  Future<bool> isUserSignedIn() async {
    bool user = FirebaseAuth.instance.currentUser ==null;
    return user;
  } 
}