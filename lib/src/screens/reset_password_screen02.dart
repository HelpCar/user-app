import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:helpcar/src/constants/colors.dart';
import '../routes/app_router.gr.dart';
import 'package:blurry/blurry.dart';

class ResetPasswordScreen02 extends StatefulWidget {
  const ResetPasswordScreen02({
    Key? key,
  }) : super(key: key);

  @override
  State<ResetPasswordScreen02> createState() => _ResetPasswordScreen02State();
}

class _ResetPasswordScreen02State extends State<ResetPasswordScreen02> {
  final _formKey = GlobalKey<FormState>();
  var rememberValue = false;

  String email = '';
  String password = '';
  bool _isLoggedIn = false;
  Map _userObj = {};

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Image(
                  image: AssetImage('lib/assets/images/logo.png'),
                  fit: BoxFit.cover),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Create new password',
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
                        hintText: 'New Password',
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
                        hintText: 'Confirm New Password',
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
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState?.save();
                          FirebaseAuth.instance
                              .sendPasswordResetEmail(email: email)
                              .then((value) {
                            print('Request Sent!');
                            Blurry(
                                    icon: Icons.verified_user,
                                    themeColor:
                                        const Color.fromARGB(255, 19, 126, 109),
                                    title: 'Request Success!',
                                    description:
                                        'Please check your email to continue',
                                    // cancelButtonText: 'Ok',
                                    // onCancelButtonPressed: () {
                                    //   context.router
                                    //       .push(LoginScreen(title: 'login'));
                                    // },
                                    confirmButtonText: 'Ok',
                                    onConfirmButtonPressed: () {
                                      // context.router
                                      //     .push(LoginScreen(title: 'login'));
                                    })
                                .show(context);
                          }).onError((error, stackTrace) {
                            print("Request Failed: $error");
                            const massage =
                                'Something Went Wrong! Please try again';
                            SnackBar snackBar = const SnackBar(
                              content: Text(massage),
                              duration: Duration(seconds: 5),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(100, 15, 100, 15),
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Reset',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
