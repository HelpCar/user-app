import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:helpcar/models/user_model.dart';
import 'package:helpcar/repositories/user_repository.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  // final userRepo = Get.put(UserRepository());
  Future<void> createUser(UserModel user) async {
    const authState = false;

    // await userRepo.createUser(user);
    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: user.email, password: user.password);
  }

  Future<bool?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser =
          await GoogleSignIn(scopes: <String>["email"]).signIn();

      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.idToken,
        idToken: googleAuth.idToken,
      );

      final userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      final user = userCredential.user;
      debugPrint('$user');
      // return '$user';
      return true;
    } catch (e) {
      debugPrint('Sign-in with Google failed: $e');
      // return null;
      return false;
    }
  }

  Future verifyEmail(UserModel user) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: user.email);
  }

  Future<void> setUserLoggedIn(bool isLoggedIn) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isLoggedIn', isLoggedIn);
  }

  Future<bool> getUserLoggedIn(bool isLoggedIn) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isLoggedIn') ?? false;
  }
}
