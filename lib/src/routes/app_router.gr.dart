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
import 'package:auto_route/auto_route.dart' as _i21;
import 'package:flutter/material.dart' as _i22;
import 'package:google_maps_flutter/google_maps_flutter.dart' as _i23;

import '../screens/add_vehicle_screen.dart' as _i12;
import '../screens/bottomTab/home_base.dart' as _i16;
import '../screens/confirm_service_screen.dart' as _i14;
import '../screens/edit_profile_screen.dart' as _i13;
import '../screens/getLocation_screen.dart' as _i15;
import '../screens/home_screen.dart' as _i17;
import '../screens/my_vehicles_screen01.dart' as _i18;
import '../screens/onboarding_screen01.dart' as _i3;
import '../screens/onboarding_screen02.dart' as _i4;
import '../screens/onboarding_screen03.dart' as _i5;
import '../screens/profile_screen01.dart' as _i20;
import '../screens/reset_password_screen01.dart' as _i10;
import '../screens/reset_password_screen02.dart' as _i11;
import '../screens/scroll_dot_view_screen.dart' as _i6;
import '../screens/services_screen01.dart' as _i19;
import '../screens/signin_dashboard_screen.dart' as _i7;
import '../screens/signin_screen.dart' as _i8;
import '../screens/signup_screen.dart' as _i9;
import '../screens/splash_screen.dart' as _i1;
import '../screens/welcome_screen.dart' as _i2;

class AppRouter extends _i21.RootStackRouter {
  AppRouter([_i22.GlobalKey<_i22.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i21.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i21.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
        transitionsBuilder: _i21.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    WelcomeScreen.name: (routeData) {
      return _i21.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.WelcomeScreen(),
        transitionsBuilder: _i21.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OnBoardingScreen01.name: (routeData) {
      return _i21.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.OnBoardingScreen01(),
        transitionsBuilder: _i21.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OnBoardingScreen02.name: (routeData) {
      return _i21.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.OnBoardingScreen02(),
        transitionsBuilder: _i21.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OnBoardingScreen03.name: (routeData) {
      return _i21.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.OnBoardingScreen03(),
        transitionsBuilder: _i21.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ScrollDotView.name: (routeData) {
      final args = routeData.argsAs<ScrollDotViewArgs>();
      return _i21.CustomPage<dynamic>(
        routeData: routeData,
        child: _i6.ScrollDotView(pageCount: args.pageCount),
        transitionsBuilder: _i21.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SignInDashboardScreen.name: (routeData) {
      return _i21.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.SignInDashboardScreen(),
        transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SignInScreen.name: (routeData) {
      return _i21.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i8.SignInScreen(),
        transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SignUpScreen.name: (routeData) {
      return _i21.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i9.SignUpScreen(),
        transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ResetPasswordScreen01.name: (routeData) {
      return _i21.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i10.ResetPasswordScreen01(),
        transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ResetPasswordScreen02.name: (routeData) {
      return _i21.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i11.ResetPasswordScreen02(),
        transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AddVehicleScreen.name: (routeData) {
      return _i21.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i12.AddVehicleScreen(),
        transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EditProfileScreen.name: (routeData) {
      return _i21.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i13.EditProfileScreen(),
        transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ConfirmServiceScreen.name: (routeData) {
      return _i21.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i14.ConfirmServiceScreen(),
        transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    GetLocationScreen.name: (routeData) {
      final args = routeData.argsAs<GetLocationScreenArgs>();
      return _i21.CustomPage<dynamic>(
        routeData: routeData,
        child: _i15.GetLocationScreen(
          key: args.key,
          latLng: args.latLng,
        ),
        transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeBase.name: (routeData) {
      return _i21.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i16.HomeBase(),
        transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeScreen.name: (routeData) {
      return _i21.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i17.HomeScreen(),
        transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MyVehicleScreen01.name: (routeData) {
      return _i21.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i18.MyVehicleScreen01(),
        transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ServicesScreen01.name: (routeData) {
      return _i21.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i19.ServicesScreen01(),
        transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProfileScrren01.name: (routeData) {
      return _i21.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i20.ProfileScrren01(),
        transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i21.RouteConfig> get routes => [
        _i21.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/home-base',
          fullMatch: true,
        ),
        _i21.RouteConfig(
          SplashScreen.name,
          path: '/splash-screen',
        ),
        _i21.RouteConfig(
          WelcomeScreen.name,
          path: '/welcome-screen',
        ),
        _i21.RouteConfig(
          OnBoardingScreen01.name,
          path: '/onBoarding-screen01',
        ),
        _i21.RouteConfig(
          OnBoardingScreen02.name,
          path: '/onBoarding-screen02',
        ),
        _i21.RouteConfig(
          OnBoardingScreen03.name,
          path: '/onBoarding-screen03',
        ),
        _i21.RouteConfig(
          ScrollDotView.name,
          path: '/scroll-screen',
        ),
        _i21.RouteConfig(
          SignInDashboardScreen.name,
          path: '/signin-dashboard-screen',
        ),
        _i21.RouteConfig(
          SignInScreen.name,
          path: '/signin-screen',
        ),
        _i21.RouteConfig(
          SignUpScreen.name,
          path: '/signup-screen',
        ),
        _i21.RouteConfig(
          ResetPasswordScreen01.name,
          path: '/reset-password01-screen',
        ),
        _i21.RouteConfig(
          ResetPasswordScreen02.name,
          path: '/reset-password02-screen',
        ),
        _i21.RouteConfig(
          AddVehicleScreen.name,
          path: '/add-vehicle-screen',
        ),
        _i21.RouteConfig(
          EditProfileScreen.name,
          path: '/edit-profile-screen',
        ),
        _i21.RouteConfig(
          ConfirmServiceScreen.name,
          path: '/confirm-service-screen',
        ),
        _i21.RouteConfig(
          GetLocationScreen.name,
          path: '/get-location-screen',
        ),
        _i21.RouteConfig(
          HomeBase.name,
          path: '/home-base',
          children: [
            _i21.RouteConfig(
              HomeScreen.name,
              path: 'home',
              parent: HomeBase.name,
            ),
            _i21.RouteConfig(
              MyVehicleScreen01.name,
              path: 'my-vehicle-screen-01',
              parent: HomeBase.name,
            ),
            _i21.RouteConfig(
              ServicesScreen01.name,
              path: 'services-screen-01',
              parent: HomeBase.name,
            ),
            _i21.RouteConfig(
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
class SplashScreen extends _i21.PageRouteInfo<void> {
  const SplashScreen()
      : super(
          SplashScreen.name,
          path: '/splash-screen',
        );

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.WelcomeScreen]
class WelcomeScreen extends _i21.PageRouteInfo<void> {
  const WelcomeScreen()
      : super(
          WelcomeScreen.name,
          path: '/welcome-screen',
        );

  static const String name = 'WelcomeScreen';
}

/// generated route for
/// [_i3.OnBoardingScreen01]
class OnBoardingScreen01 extends _i21.PageRouteInfo<void> {
  const OnBoardingScreen01()
      : super(
          OnBoardingScreen01.name,
          path: '/onBoarding-screen01',
        );

  static const String name = 'OnBoardingScreen01';
}

/// generated route for
/// [_i4.OnBoardingScreen02]
class OnBoardingScreen02 extends _i21.PageRouteInfo<void> {
  const OnBoardingScreen02()
      : super(
          OnBoardingScreen02.name,
          path: '/onBoarding-screen02',
        );

  static const String name = 'OnBoardingScreen02';
}

/// generated route for
/// [_i5.OnBoardingScreen03]
class OnBoardingScreen03 extends _i21.PageRouteInfo<void> {
  const OnBoardingScreen03()
      : super(
          OnBoardingScreen03.name,
          path: '/onBoarding-screen03',
        );

  static const String name = 'OnBoardingScreen03';
}

/// generated route for
/// [_i6.ScrollDotView]
class ScrollDotView extends _i21.PageRouteInfo<ScrollDotViewArgs> {
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
class SignInDashboardScreen extends _i21.PageRouteInfo<void> {
  const SignInDashboardScreen()
      : super(
          SignInDashboardScreen.name,
          path: '/signin-dashboard-screen',
        );

  static const String name = 'SignInDashboardScreen';
}

/// generated route for
/// [_i8.SignInScreen]
class SignInScreen extends _i21.PageRouteInfo<void> {
  const SignInScreen()
      : super(
          SignInScreen.name,
          path: '/signin-screen',
        );

  static const String name = 'SignInScreen';
}

/// generated route for
/// [_i9.SignUpScreen]
class SignUpScreen extends _i21.PageRouteInfo<void> {
  const SignUpScreen()
      : super(
          SignUpScreen.name,
          path: '/signup-screen',
        );

  static const String name = 'SignUpScreen';
}

/// generated route for
/// [_i10.ResetPasswordScreen01]
class ResetPasswordScreen01 extends _i21.PageRouteInfo<void> {
  const ResetPasswordScreen01()
      : super(
          ResetPasswordScreen01.name,
          path: '/reset-password01-screen',
        );

  static const String name = 'ResetPasswordScreen01';
}

/// generated route for
/// [_i11.ResetPasswordScreen02]
class ResetPasswordScreen02 extends _i21.PageRouteInfo<void> {
  const ResetPasswordScreen02()
      : super(
          ResetPasswordScreen02.name,
          path: '/reset-password02-screen',
        );

  static const String name = 'ResetPasswordScreen02';
}

/// generated route for
/// [_i12.AddVehicleScreen]
class AddVehicleScreen extends _i21.PageRouteInfo<void> {
  const AddVehicleScreen()
      : super(
          AddVehicleScreen.name,
          path: '/add-vehicle-screen',
        );

  static const String name = 'AddVehicleScreen';
}

/// generated route for
/// [_i13.EditProfileScreen]
class EditProfileScreen extends _i21.PageRouteInfo<void> {
  const EditProfileScreen()
      : super(
          EditProfileScreen.name,
          path: '/edit-profile-screen',
        );

  static const String name = 'EditProfileScreen';
}

/// generated route for
/// [_i14.ConfirmServiceScreen]
class ConfirmServiceScreen extends _i21.PageRouteInfo<void> {
  const ConfirmServiceScreen()
      : super(
          ConfirmServiceScreen.name,
          path: '/confirm-service-screen',
        );

  static const String name = 'ConfirmServiceScreen';
}

/// generated route for
/// [_i15.GetLocationScreen]
class GetLocationScreen extends _i21.PageRouteInfo<GetLocationScreenArgs> {
  GetLocationScreen({
    _i22.Key? key,
    required _i23.LatLng latLng,
  }) : super(
          GetLocationScreen.name,
          path: '/get-location-screen',
          args: GetLocationScreenArgs(
            key: key,
            latLng: latLng,
          ),
        );

  static const String name = 'GetLocationScreen';
}

class GetLocationScreenArgs {
  const GetLocationScreenArgs({
    this.key,
    required this.latLng,
  });

  final _i22.Key? key;

  final _i23.LatLng latLng;

  @override
  String toString() {
    return 'GetLocationScreenArgs{key: $key, latLng: $latLng}';
  }
}

/// generated route for
/// [_i16.HomeBase]
class HomeBase extends _i21.PageRouteInfo<void> {
  const HomeBase({List<_i21.PageRouteInfo>? children})
      : super(
          HomeBase.name,
          path: '/home-base',
          initialChildren: children,
        );

  static const String name = 'HomeBase';
}

/// generated route for
/// [_i17.HomeScreen]
class HomeScreen extends _i21.PageRouteInfo<void> {
  const HomeScreen()
      : super(
          HomeScreen.name,
          path: 'home',
        );

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i18.MyVehicleScreen01]
class MyVehicleScreen01 extends _i21.PageRouteInfo<void> {
  const MyVehicleScreen01()
      : super(
          MyVehicleScreen01.name,
          path: 'my-vehicle-screen-01',
        );

  static const String name = 'MyVehicleScreen01';
}

/// generated route for
/// [_i19.ServicesScreen01]
class ServicesScreen01 extends _i21.PageRouteInfo<void> {
  const ServicesScreen01()
      : super(
          ServicesScreen01.name,
          path: 'services-screen-01',
        );

  static const String name = 'ServicesScreen01';
}

/// generated route for
/// [_i20.ProfileScrren01]
class ProfileScrren01 extends _i21.PageRouteInfo<void> {
  const ProfileScrren01()
      : super(
          ProfileScrren01.name,
          path: 'profile-screen-01',
        );

  static const String name = 'ProfileScrren01';
}
