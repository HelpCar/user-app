import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:helpcar/src/constants/colors.dart';
import 'package:helpcar/src/routes/app_router.gr.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 280,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.fromLTRB(0, 16, 16, 16),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage:
                          NetworkImage('https://picsum.photos/200'),
                      radius: 50,
                    ),
                    Column(
                      children: const [
                        Text(
                          'John Doe',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'johndoe@example.com',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  children: const [
                    Image(
                        image: AssetImage('lib/assets/images/Coin.png'),
                        fit: BoxFit.cover),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '100',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Image(
              image: AssetImage('lib/assets/images/logo.png'),
              fit: BoxFit.cover),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Are you in a trouble?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Image(
              image: AssetImage('lib/assets/images/homeImage.png'),
              fit: BoxFit.cover),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              // if (_formKey.currentState!.validate()) {
              //   _formKey.currentState?.save();
              //   final message = 'Welcome $email!';
              //   FirebaseAuth.instance
              //       .signInWithEmailAndPassword(
              //           email: email, password: password)
              //       .then((value) {
              //     print('Logged In!');
              //     context.router.push(const LandingScreen());
              //   }).onError((error, stackTrace) {
              //     print("Login Failed: $error");
              //   });
              // }
              // context.router.replace(const HomeBase());
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.fromLTRB(100, 15, 100, 15),
              shape: const StadiumBorder(),
            ),
            child: const Text(
              'I want help',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // const Spacer(),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Best Service Providers',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.fromLTRB(0, 16, 16, 16),
            // child: Row(
            //   children: [
            //     const CircleAvatar(
            //       backgroundImage: NetworkImage('https://picsum.photos/200'),
            //       radius: 50,
            //     ),
            //     Column(
            //       children: const [
            //         Text(
            //           'John Doe',
            //           style: TextStyle(
            //             fontSize: 15,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //         Spacer(),
            //         Text(
            //           'johndoe@example.com',
            //           style: TextStyle(
            //             fontSize: 12,
            //             color: Colors.grey,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
          ),
        ],
      ),
    );
  }
}
