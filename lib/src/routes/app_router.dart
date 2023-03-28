import 'package:auto_route/auto_route.dart';
import 'package:helpcar/src/screens/add_vehicle_screen.dart';
import 'package:helpcar/src/screens/home_screen.dart';
import 'package:helpcar/src/screens/onboarding_screen01.dart';
import 'package:helpcar/src/screens/onboarding_screen02.dart';
import 'package:helpcar/src/screens/onboarding_screen03.dart';
import 'package:helpcar/src/screens/reset_password_screen01.dart';
import 'package:helpcar/src/screens/reset_password_screen02.dart';
import 'package:helpcar/src/screens/scroll_dot_view_screen.dart';
import 'package:helpcar/src/screens/signin_dashboard_screen.dart';
import 'package:helpcar/src/screens/signup_screen.dart';
import 'package:helpcar/src/screens/splash_screen.dart';
import 'package:helpcar/src/screens/welcome_screen.dart';
import 'package:helpcar/src/screens/signin_screen.dart';

// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
      page: SplashScreen,
      path: 'splash-screen',
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: WelcomeScreen,
      path: '/welcome-screen',
      // initial: true,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      guards: [],
    ),
    CustomRoute(
      page: OnBoardingScreen01,
      path: '/onBoarding-screen01',
      transitionsBuilder: TransitionsBuilders.slideLeft,
      maintainState: true,
      guards: [],
    ),
    CustomRoute(
      page: OnBoardingScreen02,
      path: '/onBoarding-screen02',
      transitionsBuilder: TransitionsBuilders.slideLeft,
      maintainState: true,
      guards: [],
    ),
    CustomRoute(
      page: OnBoardingScreen03,
      path: '/onBoarding-screen03',
      transitionsBuilder: TransitionsBuilders.slideLeft,
      guards: [],
    ),
    CustomRoute(
      page: ScrollDotView,
      path: '/scroll-screen',
      transitionsBuilder: TransitionsBuilders.slideLeft,
      maintainState: true,
      guards: [],
    ),
    CustomRoute(
      page: SignInDashboardScreen,
      path: '/signin-dashboard-screen',
      transitionsBuilder: TransitionsBuilders.fadeIn,
      maintainState: true,
      guards: [],
    ),
    CustomRoute(
      page: SignInScreen,
      path: '/signin-screen',
      transitionsBuilder: TransitionsBuilders.fadeIn,
      maintainState: true,
      guards: [],
    ),
    CustomRoute(
      page: SignUpScreen,
      path: '/signup-screen',
      transitionsBuilder: TransitionsBuilders.fadeIn,
      maintainState: true,
      guards: [],
    ),
    CustomRoute(
      page: ResetPasswordScreen01,
      path: '/reset-password01-screen',
      transitionsBuilder: TransitionsBuilders.fadeIn,
      maintainState: true,
      guards: [],
    ),
    CustomRoute(
      page: ResetPasswordScreen02,
      path: '/reset-password02-screen',
      transitionsBuilder: TransitionsBuilders.fadeIn,
      maintainState: true,
      guards: [],
    ),
    CustomRoute(
      page: AddVehicleScreen,
      initial: true,
      path: '/add-vehicle-screen',
      transitionsBuilder: TransitionsBuilders.fadeIn,
      maintainState: true,
      guards: [],
    ),
    CustomRoute(
      page: HomeScreen,
      path: '/home-screen',
      transitionsBuilder: TransitionsBuilders.fadeIn,
      maintainState: true,
      guards: [],
    ),
  ],
)
class $AppRouter {}
