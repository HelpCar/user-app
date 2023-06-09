import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:helpcar/src/constants/colors.dart';
import 'package:helpcar/src/controllers/user_controller.dart';
import 'package:helpcar/src/services/auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../routes/app_router.gr.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  var rememberValue = false;

  String name = '';
  String email = '';
  String password = '';
  bool _isLoggedIn = false;
  Map _userObj = {};

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.router.navigateBack();
            },
          ),
          iconTheme: IconThemeData(color: defaultColorScheme.primary),
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
        ),
        body: Container(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Image(
                  image: AssetImage('lib/assets/images/logo.png'),
                  fit: BoxFit.cover),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Login to Your Account',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your name';
                        }
                        return null;
                      },
                      // onSaved: (value) => setState(() => name = value!),
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'name',
                        prefixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10.0),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) => EmailValidator.validate(value!)
                          ? null
                          : "Please enter a valid email",
                      onSaved: (value) => setState(() {
                        email = value!;
                      }),
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'email',
                        prefixIcon: const Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10.0),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          setState(() {
                            password = 'null';
                          });
                          return ('Please enter your password');
                        } else if (value.length < 8) {
                          setState(() {
                            password = 'null';
                          });
                          return 'Password must be at least 8 characters';
                        }
                        return null;
                      },
                      onSaved: (value) => setState((() => password = value!)),
                      maxLines: 1,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        hintText: 'password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10.0),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // if (password == 'null')
                    TextButton(
                        onPressed: () {
                          context.router
                              .navigate(const ResetPasswordScreen01());
                        },
                        child: const Text('Forgot Password')),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState?.save();
                          FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: email, password: password)
                              .then((value) async {
                            setState(() {
                              _isLoggedIn = true;
                            });
                            final prefs = await SharedPreferences.getInstance();
                            prefs.setBool('isLoggedIn', _isLoggedIn);
                            if (kDebugMode) {
                              print('You are Logged In!');
                              print(_isLoggedIn);
                            }
                            context.router.replace(const HomeBase());
                          }).onError((error, stackTrace) {
                            if (kDebugMode) {
                              print("Login Failed: $error");
                            }
                          });
                          final massage = 'Logged in as $email!';
                          final SnackBar snackBar = SnackBar(
                            content: Text(massage),
                            duration: const Duration(seconds: 3),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(100, 15, 100, 15),
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "or",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
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
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                            context.router.replace(const HomeBase());
                          }
                        });
                      },
                      borderRadius: 50,
                      height: 45,
                      width: 260,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Don’t have a HelpCar account yet?'),
                        TextButton(
                            onPressed: () {
                              context.router.push(const SignUpScreen());
                            },
                            child: const Text('Sign up')),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
