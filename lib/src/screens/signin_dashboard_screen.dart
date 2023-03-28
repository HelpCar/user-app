import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:social_login_buttons/social_login_buttons.dart';
import '../routes/app_router.gr.dart';

class SignInDashboardScreen extends StatelessWidget {
  const SignInDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Center(
          child: Container(
            padding: const EdgeInsets.all(35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Image(
                    image: AssetImage('lib/assets/images/logo.png'),
                    fit: BoxFit.scaleDown),
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  "Let’s you in",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 40,
                ),
                SocialLoginButton(
                  buttonType: SocialLoginButtonType.google,
                  onPressed: () {},
                  borderRadius: 50,
                  height: 52,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "or",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.router.navigate(const SignInScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 15, 100, 15),
                    shape: const StadiumBorder(),
                  ),
                  child: const Text(
                    'Sign in with email',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don’t have a HelpCar account yet?'),
                    TextButton(
                        onPressed: () {
                          // context.router
                          //     .push(RegisterScreen(title: 'Register'));
                        },
                        child: const Text('Sign up')),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
