import 'package:flutter/material.dart';
import 'package:helpcar/src/constants/colors.dart';

class ProfileScrren01 extends StatefulWidget {
  const ProfileScrren01({super.key});

  @override
  State<ProfileScrren01> createState() => _ProfileScrren01State();
}

class _ProfileScrren01State extends State<ProfileScrren01> {
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
