import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen02 extends StatelessWidget {
  const OnBoardingScreen02({super.key});

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
                    image:
                        AssetImage('lib/assets/images/onBoarding02_Image.png'),
                    fit: BoxFit.scaleDown),
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  "A trusted assistant to fix your stranded car",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    // context.router.push(const OnBoardingScreen02());
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
        )
      ],
    ));
  }
}
