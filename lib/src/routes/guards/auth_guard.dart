// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';

// import 'package:auth';

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
//       router.push(LoginRoute());
//       return false;
//     }
//   }
  
//   @override
//   void onNavigation(NavigationResolver resolver, StackRouter router) {
//     // TODO: implement onNavigation
//   }
// }
