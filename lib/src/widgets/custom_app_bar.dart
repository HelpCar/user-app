import 'package:flutter/material.dart';
import 'package:helpcar/src/constants/colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onBackButtonPressed;
  final String coinBalance;
  final bool showBackButton;

  const MyAppBar({
    Key? key,
    required this.title,
    required this.onBackButtonPressed,
    required this.coinBalance,
    this.showBackButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              color: defaultColorScheme.primary,
              onPressed: onBackButtonPressed,
            )
          : null,
      title: Text(
        title,
        style: TextStyle(
            color: defaultColorScheme.primary, fontWeight: FontWeight.bold),
      ),
      actions: <Widget>[
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Image.asset(
                'lib/assets/images/Coin.png',
                width: 30.0,
                height: 30.0,
              ),
            ),
            Text(
              coinBalance,
              style: TextStyle(
                  fontSize: 15.0,
                  color: defaultColorScheme.primary,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 15,
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
