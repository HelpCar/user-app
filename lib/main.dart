import 'package:flutter/material.dart';
import 'package:helpcar/src/controllers/profile_controller.dart';
import 'package:helpcar/src/controllers/user_controller.dart';
import 'package:helpcar/src/routes/app_router.gr.dart';
import 'package:helpcar/src/constants/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(UserController());
  Get.put(ProfileController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: defaultColorScheme,
      ),
    );
  }
}
