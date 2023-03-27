import 'package:flutter/material.dart';
import 'package:helpcar/src/constants/colors.dart';
import 'package:helpcar/src/screens/onboarding_screen01.dart';
import 'package:helpcar/src/screens/onboarding_screen02.dart';
import 'package:helpcar/src/screens/onboarding_screen03.dart';

class ScrollDotView extends StatefulWidget {
  final int pageCount;
  const ScrollDotView({required this.pageCount});

  @override
  _ScrollDotViewState createState() => _ScrollDotViewState();
}

class _ScrollDotViewState extends State<ScrollDotView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            itemCount: widget.pageCount,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              switch (index) {
                case 0:
                  return const OnBoardingScreen01();
                case 1:
                  return const OnBoardingScreen02();
                case 2:
                  return const OnBoardingScreen03();
                default:
                  return Container();
              }
            },
          ),
        ),
        Container(
          color: defaultColorScheme.background,
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(widget.pageCount, (index) {
              return Container(
                width: 8,
                height: 8,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index
                      ? defaultColorScheme.primary
                      : Colors.grey,
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
