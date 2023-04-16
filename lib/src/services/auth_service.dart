import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:helpcar/src/controllers/user_controller.dart';
import 'package:helpcar/src/screens/bottomTab/home_base.dart';
import 'package:helpcar/src/screens/signin_screen.dart';

class AuthService {
  bool _isLoggedIn = false;
  Map _userObj = {};

  handleAuthState() {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasData) {
          return const SignInScreen();
        } else {
          return const HomeBase();
        }
      },
    );
  }

  signOut() {
    FirebaseAuth.instance.signOut();
    _isLoggedIn = false;
  }
}
