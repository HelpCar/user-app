import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helpcar/src/constants/colors.dart';
import 'package:helpcar/src/screens/bottomTab/home_base_controller.dart';

class HomeBase extends StatefulWidget {
  const HomeBase({Key? key}) : super(key: key);

  @override
  State<HomeBase> createState() => _HomeBaseState();
}

class _HomeBaseState extends State<HomeBase> {
  final _homeBaseController = Get.put(HomeBaseController());

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        maintainBottomViewPadding: true,
        child: Obx(
          () => Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                currentIndex:
                    _homeBaseController.bottomNavBarSelectedItem.value,
                elevation: 15,
                selectedItemColor: defaultColorScheme.primary,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      size: 28,
                    ),
                    activeIcon: Icon(
                      Icons.home_filled,
                      size: 25,
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.car_crash_outlined,
                      size: 25,
                    ),
                    activeIcon: Icon(
                      Icons.car_crash_rounded,
                      size: 25,
                    ),
                    label: 'My Vehicles',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.miscellaneous_services,
                      size: 25,
                    ),
                    activeIcon: Icon(
                      Icons.miscellaneous_services_rounded,
                      size: 25,
                    ),
                    label: 'Services',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person_outline,
                      size: 25,
                    ),
                    activeIcon: Icon(
                      Icons.person,
                      size: 25,
                    ),
                    label: 'Profile',
                  ),
                ],
                onTap: (index) {
                  _homeBaseController.onNavigation(context, index);
                },
              ),
              body: const AutoRouter()),
        ),
      ),
    );
  }
}
