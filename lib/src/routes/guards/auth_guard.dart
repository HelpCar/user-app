import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:helpcar/src/routes/app_router.gr.dart';
import 'package:helpcar/src/services/auth_service.dart';

// class AuthGuard extends AutoRouteGuard {

//   @override
//   Future<bool> canNavigate(
//     List<PageRouteInfo> pendingRoutes,
//     StackRouter router,
//   ) async {
//     final isAuthenticated = await AuthService().isAuthenticated();
//     if (isAuthenticated) {
//       return true;
//     } else {
//       router.push(const SignInScreen());
//       return false;
//     }
//   }

//   @override
//   void onNavigation(NavigationResolver resolver, StackRouter router) {
//   }
// }

// class AuthGuard extends AutoRouteGuard {
//   @override
//   void onNavigation(NavigationResolver resolver, StackRouter router) {
//     if (!isLoggedIn()) {
//       // user is not logged in, redirect to login screen
//       router.replaceAll([const SignInScreen()]);
//     } else {
//       // user is logged in, allow navigation
//       resolver.next(true);
//     }
//   }

//   bool isLoggedIn() {
//     // TODO: add your logic to check if user is logged in
//     return false; // for testing purposes, always return false
//   }
// }

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({Key? key, Widget? child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
        if (snapshot.hasData) {
          return const AutoRouter();
        } else {
          return const AutoRouter();
        }
      },
    );
  }
}
