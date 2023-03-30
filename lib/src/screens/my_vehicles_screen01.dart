import 'package:flutter/material.dart';
import 'package:helpcar/src/constants/colors.dart';

class MyVehicleScreen01 extends StatefulWidget {
  const MyVehicleScreen01({super.key});

  @override
  State<MyVehicleScreen01> createState() => _MyVehicleScreen01State();
}

class _MyVehicleScreen01State extends State<MyVehicleScreen01> {
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
