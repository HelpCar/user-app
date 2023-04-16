import 'package:flutter/material.dart';
import 'package:helpcar/src/widgets/custom_app_bar.dart';
import 'package:helpcar/src/widgets/custom_button_large.dart';

class ServicesScreen01 extends StatefulWidget {
  const ServicesScreen01({super.key});

  @override
  State<ServicesScreen01> createState() => _ServicesScreen01State();
}

class _ServicesScreen01State extends State<ServicesScreen01> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MyAppBar(
              title: 'Services',
              onBackButtonPressed: () => Navigator.pop(context),
              coinBalance: '100',
              showBackButton: false,
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Find a service provider to get your car fixed.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                TextIconButton(
                  text: 'Select a nearby service provider',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 40,
                ),
                TextIconButton(
                  text: 'Request a random service provider (Faster)',
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
