// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../screens/home_screen.dart' as _i8;
import '../screens/onboarding_screen01.dart' as _i3;
import '../screens/onboarding_screen02.dart' as _i4;
import '../screens/onboarding_screen03.dart' as _i5;
import '../screens/scroll_dot_view_screen.dart' as _i9;
import '../screens/signin_screen.dart' as _i6;
import '../screens/signup_screen.dart' as _i7;
import '../screens/splash_screen.dart' as _i1;
import '../screens/welcome_screen.dart' as _i2;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
        transitionsBuilder: _i10.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    WelcomeScreen.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.WelcomeScreen(),
        transitionsBuilder: _i10.TransitionsBuilders.noTransition,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OnBoardingScreen01.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.OnBoardingScreen01(),
        transitionsBuilder: _i10.TransitionsBuilders.noTransition,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OnBoardingScreen02.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.OnBoardingScreen02(),
        transitionsBuilder: _i10.TransitionsBuilders.noTransition,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OnBoardingScreen03.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.OnBoardingScreen03(),
        transitionsBuilder: _i10.TransitionsBuilders.noTransition,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SignInScreen.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.SignInScreen(),
        transitionsBuilder: _i10.TransitionsBuilders.noTransition,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SignUpScreen.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.SignUpScreen(),
        transitionsBuilder: _i10.TransitionsBuilders.noTransition,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeScreen.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i8.HomeScreen(),
        transitionsBuilder: _i10.TransitionsBuilders.noTransition,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ScrollDotView.name: (routeData) {
      final args = routeData.argsAs<ScrollDotViewArgs>();
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: _i9.ScrollDotView(pageCount: args.pageCount),
        transitionsBuilder: _i10.TransitionsBuilders.noTransition,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/signin-screen',
          fullMatch: true,
        ),
        _i10.RouteConfig(
          SplashScreen.name,
          path: 'splash-screen',
        ),
        _i10.RouteConfig(
          WelcomeScreen.name,
          path: '/welcome-screen',
        ),
        _i10.RouteConfig(
          OnBoardingScreen01.name,
          path: '/onBoarding-screen01',
        ),
        _i10.RouteConfig(
          OnBoardingScreen02.name,
          path: '/onBoarding-screen02',
        ),
        _i10.RouteConfig(
          OnBoardingScreen03.name,
          path: '/onBoarding-screen03',
        ),
        _i10.RouteConfig(
          SignInScreen.name,
          path: '/signin-screen',
        ),
        _i10.RouteConfig(
          SignUpScreen.name,
          path: '/signup-screen',
        ),
        _i10.RouteConfig(
          HomeScreen.name,
          path: '/home-screen',
        ),
        _i10.RouteConfig(
          ScrollDotView.name,
          path: '/scroll-screen',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i10.PageRouteInfo<void> {
  const SplashScreen()
      : super(
          SplashScreen.name,
          path: 'splash-screen',
        );

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.WelcomeScreen]
class WelcomeScreen extends _i10.PageRouteInfo<void> {
  const WelcomeScreen()
      : super(
          WelcomeScreen.name,
          path: '/welcome-screen',
        );

  static const String name = 'WelcomeScreen';
}

/// generated route for
/// [_i3.OnBoardingScreen01]
class OnBoardingScreen01 extends _i10.PageRouteInfo<void> {
  const OnBoardingScreen01()
      : super(
          OnBoardingScreen01.name,
          path: '/onBoarding-screen01',
        );

  static const String name = 'OnBoardingScreen01';
}

/// generated route for
/// [_i4.OnBoardingScreen02]
class OnBoardingScreen02 extends _i10.PageRouteInfo<void> {
  const OnBoardingScreen02()
      : super(
          OnBoardingScreen02.name,
          path: '/onBoarding-screen02',
        );

  static const String name = 'OnBoardingScreen02';
}

/// generated route for
/// [_i5.OnBoardingScreen03]
class OnBoardingScreen03 extends _i10.PageRouteInfo<void> {
  const OnBoardingScreen03()
      : super(
          OnBoardingScreen03.name,
          path: '/onBoarding-screen03',
        );

  static const String name = 'OnBoardingScreen03';
}

/// generated route for
/// [_i6.SignInScreen]
class SignInScreen extends _i10.PageRouteInfo<void> {
  const SignInScreen()
      : super(
          SignInScreen.name,
          path: '/signin-screen',
        );

  static const String name = 'SignInScreen';
}

/// generated route for
/// [_i7.SignUpScreen]
class SignUpScreen extends _i10.PageRouteInfo<void> {
  const SignUpScreen()
      : super(
          SignUpScreen.name,
          path: '/signup-screen',
        );

  static const String name = 'SignUpScreen';
}

/// generated route for
/// [_i8.HomeScreen]
class HomeScreen extends _i10.PageRouteInfo<void> {
  const HomeScreen()
      : super(
          HomeScreen.name,
          path: '/home-screen',
        );

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i9.ScrollDotView]
class ScrollDotView extends _i10.PageRouteInfo<ScrollDotViewArgs> {
  ScrollDotView({required int pageCount})
      : super(
          ScrollDotView.name,
          path: '/scroll-screen',
          args: ScrollDotViewArgs(pageCount: pageCount),
        );

  static const String name = 'ScrollDotView';
}

class ScrollDotViewArgs {
  const ScrollDotViewArgs({required this.pageCount});

  final int pageCount;

  @override
  String toString() {
    return 'ScrollDotViewArgs{pageCount: $pageCount}';
  }
}
