import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:helpcar/src/routes/app_router.gr.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      context.router.push(ScrollDotView(pageCount: 3));
    });
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/assets/images/welcomeScreenbg.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Center(
          child: Image(
              image: AssetImage('lib/assets/images/welcomeScreenText.png'),
              fit: BoxFit.scaleDown),
        ),
      ],
    ));
  }
}
