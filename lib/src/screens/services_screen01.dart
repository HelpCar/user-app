import 'package:flutter/material.dart';
import 'package:helpcar/src/constants/colors.dart';

class ServicesScreen01 extends StatefulWidget {
  const ServicesScreen01({super.key});

  @override
  State<ServicesScreen01> createState() => _ServicesScreen01State();
}

class _ServicesScreen01State extends State<ServicesScreen01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
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
          children: <Widget>[],
        ),
      ),
    );
  }
}
