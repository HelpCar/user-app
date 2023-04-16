import 'package:blurry/blurry.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:helpcar/src/constants/colors.dart';
import '../routes/app_router.gr.dart';

class ResetPasswordScreen01 extends StatefulWidget {
  const ResetPasswordScreen01({
    Key? key,
  }) : super(key: key);

  @override
  State<ResetPasswordScreen01> createState() => _ResetPasswordScreen01State();
}

class _ResetPasswordScreen01State extends State<ResetPasswordScreen01> {
  final _formKey = GlobalKey<FormState>();
  var rememberValue = false;

  String email = '';
  bool _isLoggedIn = false;
  Map _userObj = {};

  TextEditingController emailController = TextEditingController();

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
                'Reset your password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Enter the email associated with your account and we’ll send an email with instructions to reset your password.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
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
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState?.save();
                          FirebaseAuth.instance
                              .sendPasswordResetEmail(email: email)
                              .then((value) {
                            if (kDebugMode) {
                              print('Request Sent!');
                            }
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
                            // context.router
                            //     .navigate(const ResetPasswordScreen02());
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
                        'Next',
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
