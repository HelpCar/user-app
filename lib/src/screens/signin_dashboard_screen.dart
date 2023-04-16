import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:helpcar/src/controllers/user_controller.dart';
import 'package:helpcar/src/services/auth_service.dart';
import 'package:social_login_buttons/social_login_buttons.dart';
import '../routes/app_router.gr.dart';

class SignInDashboardScreen extends StatefulWidget {
  const SignInDashboardScreen({super.key});

  @override
  State<SignInDashboardScreen> createState() => _SignInDashboardScreenState();
}

class _SignInDashboardScreenState extends State<SignInDashboardScreen> {
  bool _isLoggedIn = false;
  User? _user;

  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    _checkUserLoggedIn();
  }

  void _checkUserLoggedIn() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    setState(() {
      _user = currentUser;
    });
  }

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
                  onPressed: () {
                    UserController().signInWithGoogle();
                    auth.authStateChanges().listen((User? user) {
                      if (user == null) {
                        // User is signed out
                      } else {
                        const massage = 'you are Logged in!';
                        SnackBar snackBar = const SnackBar(
                          content: Text(massage),
                          duration: Duration(seconds: 3),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        context.router.replace(const HomeBase());
                      }
                    });
                  },
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
                          context.router.navigate(const SignUpScreen());
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
