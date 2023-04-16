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
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;

import '../screens/add_vehicle_screen.dart' as _i12;
import '../screens/bottomTab/home_base.dart' as _i13;
import '../screens/home_screen.dart' as _i14;
import '../screens/my_vehicles_screen01.dart' as _i15;
import '../screens/onboarding_screen01.dart' as _i3;
import '../screens/onboarding_screen02.dart' as _i4;
import '../screens/onboarding_screen03.dart' as _i5;
import '../screens/profile_screen01.dart' as _i17;
import '../screens/reset_password_screen01.dart' as _i10;
import '../screens/reset_password_screen02.dart' as _i11;
import '../screens/scroll_dot_view_screen.dart' as _i6;
import '../screens/services_screen01.dart' as _i16;
import '../screens/signin_dashboard_screen.dart' as _i7;
import '../screens/signin_screen.dart' as _i8;
import '../screens/signup_screen.dart' as _i9;
import '../screens/splash_screen.dart' as _i1;
import '../screens/welcome_screen.dart' as _i2;

class AppRouter extends _i18.RootStackRouter {
  AppRouter([_i19.GlobalKey<_i19.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i18.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
        transitionsBuilder: _i18.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    WelcomeScreen.name: (routeData) {
      return _i18.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.WelcomeScreen(),
        transitionsBuilder: _i18.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OnBoardingScreen01.name: (routeData) {
      return _i18.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.OnBoardingScreen01(),
        transitionsBuilder: _i18.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OnBoardingScreen02.name: (routeData) {
      return _i18.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.OnBoardingScreen02(),
        transitionsBuilder: _i18.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OnBoardingScreen03.name: (routeData) {
      return _i18.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.OnBoardingScreen03(),
        transitionsBuilder: _i18.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ScrollDotView.name: (routeData) {
      final args = routeData.argsAs<ScrollDotViewArgs>();
      return _i18.CustomPage<dynamic>(
        routeData: routeData,
        child: _i6.ScrollDotView(pageCount: args.pageCount),
        transitionsBuilder: _i18.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SignInDashboardScreen.name: (routeData) {
      return _i18.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.SignInDashboardScreen(),
        transitionsBuilder: _i18.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SignInScreen.name: (routeData) {
      return _i18.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i8.SignInScreen(),
        transitionsBuilder: _i18.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SignUpScreen.name: (routeData) {
      return _i18.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i9.SignUpScreen(),
        transitionsBuilder: _i18.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ResetPasswordScreen01.name: (routeData) {
      return _i18.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i10.ResetPasswordScreen01(),
        transitionsBuilder: _i18.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ResetPasswordScreen02.name: (routeData) {
      return _i18.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i11.ResetPasswordScreen02(),
        transitionsBuilder: _i18.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AddVehicleScreen.name: (routeData) {
      return _i18.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i12.AddVehicleScreen(),
        transitionsBuilder: _i18.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeBase.name: (routeData) {
      return _i18.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i13.HomeBase(),
        transitionsBuilder: _i18.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeScreen.name: (routeData) {
      return _i18.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i14.HomeScreen(),
        transitionsBuilder: _i18.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MyVehicleScreen01.name: (routeData) {
      return _i18.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i15.MyVehicleScreen01(),
        transitionsBuilder: _i18.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ServicesScreen01.name: (routeData) {
      return _i18.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i16.ServicesScreen01(),
        transitionsBuilder: _i18.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProfileScrren01.name: (routeData) {
      return _i18.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i17.ProfileScrren01(),
        transitionsBuilder: _i18.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i18.RouteConfig> get routes => [
        _i18.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/welcome-screen',
          fullMatch: true,
        ),
        _i18.RouteConfig(
          SplashScreen.name,
          path: '/splash-screen',
        ),
        _i18.RouteConfig(
          WelcomeScreen.name,
          path: '/welcome-screen',
        ),
        _i18.RouteConfig(
          OnBoardingScreen01.name,
          path: '/onBoarding-screen01',
        ),
        _i18.RouteConfig(
          OnBoardingScreen02.name,
          path: '/onBoarding-screen02',
        ),
        _i18.RouteConfig(
          OnBoardingScreen03.name,
          path: '/onBoarding-screen03',
        ),
        _i18.RouteConfig(
          ScrollDotView.name,
          path: '/scroll-screen',
        ),
        _i18.RouteConfig(
          SignInDashboardScreen.name,
          path: '/signin-dashboard-screen',
        ),
        _i18.RouteConfig(
          SignInScreen.name,
          path: '/signin-screen',
        ),
        _i18.RouteConfig(
          SignUpScreen.name,
          path: '/signup-screen',
        ),
        _i18.RouteConfig(
          ResetPasswordScreen01.name,
          path: '/reset-password01-screen',
        ),
        _i18.RouteConfig(
          ResetPasswordScreen02.name,
          path: '/reset-password02-screen',
        ),
        _i18.RouteConfig(
          AddVehicleScreen.name,
          path: '/add-vehicle-screen',
        ),
        _i18.RouteConfig(
          HomeBase.name,
          path: '/home-base',
          children: [
            _i18.RouteConfig(
              '#redirect',
              path: '',
              parent: HomeBase.name,
              redirectTo: 'home',
              fullMatch: true,
            ),
            _i18.RouteConfig(
              HomeScreen.name,
              path: 'home',
              parent: HomeBase.name,
            ),
            _i18.RouteConfig(
              MyVehicleScreen01.name,
              path: 'my-vehicle-screen-01',
              parent: HomeBase.name,
            ),
            _i18.RouteConfig(
              ServicesScreen01.name,
              path: 'services-screen-01',
              parent: HomeBase.name,
            ),
            _i18.RouteConfig(
              ProfileScrren01.name,
              path: 'profile-screen-01',
              parent: HomeBase.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i18.PageRouteInfo<void> {
  const SplashScreen()
      : super(
          SplashScreen.name,
          path: '/splash-screen',
        );

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.WelcomeScreen]
class WelcomeScreen extends _i18.PageRouteInfo<void> {
  const WelcomeScreen()
      : super(
          WelcomeScreen.name,
          path: '/welcome-screen',
        );

  static const String name = 'WelcomeScreen';
}

/// generated route for
/// [_i3.OnBoardingScreen01]
class OnBoardingScreen01 extends _i18.PageRouteInfo<void> {
  const OnBoardingScreen01()
      : super(
          OnBoardingScreen01.name,
          path: '/onBoarding-screen01',
        );

  static const String name = 'OnBoardingScreen01';
}

/// generated route for
/// [_i4.OnBoardingScreen02]
class OnBoardingScreen02 extends _i18.PageRouteInfo<void> {
  const OnBoardingScreen02()
      : super(
          OnBoardingScreen02.name,
          path: '/onBoarding-screen02',
        );

  static const String name = 'OnBoardingScreen02';
}

/// generated route for
/// [_i5.OnBoardingScreen03]
class OnBoardingScreen03 extends _i18.PageRouteInfo<void> {
  const OnBoardingScreen03()
      : super(
          OnBoardingScreen03.name,
          path: '/onBoarding-screen03',
        );

  static const String name = 'OnBoardingScreen03';
}

/// generated route for
/// [_i6.ScrollDotView]
class ScrollDotView extends _i18.PageRouteInfo<ScrollDotViewArgs> {
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

/// generated route for
/// [_i7.SignInDashboardScreen]
class SignInDashboardScreen extends _i18.PageRouteInfo<void> {
  const SignInDashboardScreen()
      : super(
          SignInDashboardScreen.name,
          path: '/signin-dashboard-screen',
        );

  static const String name = 'SignInDashboardScreen';
}

/// generated route for
/// [_i8.SignInScreen]
class SignInScreen extends _i18.PageRouteInfo<void> {
  const SignInScreen()
      : super(
          SignInScreen.name,
          path: '/signin-screen',
        );

  static const String name = 'SignInScreen';
}

/// generated route for
/// [_i9.SignUpScreen]
class SignUpScreen extends _i18.PageRouteInfo<void> {
  const SignUpScreen()
      : super(
          SignUpScreen.name,
          path: '/signup-screen',
        );

  static const String name = 'SignUpScreen';
}

/// generated route for
/// [_i10.ResetPasswordScreen01]
class ResetPasswordScreen01 extends _i18.PageRouteInfo<void> {
  const ResetPasswordScreen01()
      : super(
          ResetPasswordScreen01.name,
          path: '/reset-password01-screen',
        );

  static const String name = 'ResetPasswordScreen01';
}

/// generated route for
/// [_i11.ResetPasswordScreen02]
class ResetPasswordScreen02 extends _i18.PageRouteInfo<void> {
  const ResetPasswordScreen02()
      : super(
          ResetPasswordScreen02.name,
          path: '/reset-password02-screen',
        );

  static const String name = 'ResetPasswordScreen02';
}

/// generated route for
/// [_i12.AddVehicleScreen]
class AddVehicleScreen extends _i18.PageRouteInfo<void> {
  const AddVehicleScreen()
      : super(
          AddVehicleScreen.name,
          path: '/add-vehicle-screen',
        );

  static const String name = 'AddVehicleScreen';
}

/// generated route for
/// [_i13.HomeBase]
class HomeBase extends _i18.PageRouteInfo<void> {
  const HomeBase({List<_i18.PageRouteInfo>? children})
      : super(
          HomeBase.name,
          path: '/home-base',
          initialChildren: children,
        );

  static const String name = 'HomeBase';
}

/// generated route for
/// [_i14.HomeScreen]
class HomeScreen extends _i18.PageRouteInfo<void> {
  const HomeScreen()
      : super(
          HomeScreen.name,
          path: 'home',
        );

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i15.MyVehicleScreen01]
class MyVehicleScreen01 extends _i18.PageRouteInfo<void> {
  const MyVehicleScreen01()
      : super(
          MyVehicleScreen01.name,
          path: 'my-vehicle-screen-01',
        );

  static const String name = 'MyVehicleScreen01';
}

/// generated route for
/// [_i16.ServicesScreen01]
class ServicesScreen01 extends _i18.PageRouteInfo<void> {
  const ServicesScreen01()
      : super(
          ServicesScreen01.name,
          path: 'services-screen-01',
        );

  static const String name = 'ServicesScreen01';
}

/// generated route for
/// [_i17.ProfileScrren01]
class ProfileScrren01 extends _i18.PageRouteInfo<void> {
  const ProfileScrren01()
      : super(
          ProfileScrren01.name,
          path: 'profile-screen-01',
        );

  static const String name = 'ProfileScrren01';
}
