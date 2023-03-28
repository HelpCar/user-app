import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:helpcar/src/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
    );
  }
}
