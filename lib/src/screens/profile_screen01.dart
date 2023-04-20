import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:helpcar/src/constants/colors.dart';
import 'package:helpcar/src/routes/app_router.gr.dart';
import 'package:helpcar/src/widgets/custom_app_bar.dart';

class ProfileScrren01 extends StatefulWidget {
  const ProfileScrren01({super.key});

  @override
  State<ProfileScrren01> createState() => _ProfileScrren01State();
}

class _ProfileScrren01State extends State<ProfileScrren01> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          MyAppBar(
            title: 'Services',
            onBackButtonPressed: () => Navigator.pop(context),
            coinBalance: '100',
            showBackButton: false,
          ),
          // Padding(
          //   padding: const EdgeInsets.all(16),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       const CustomText(
          //         textAlign: TextAlign.center,
          //         text: 'Profile',
          //         style: TextStyle(
          //           fontWeight: FontWeight.bold,
          //           fontSize: 24,
          //         ),
          //       ),
          //       IconButton(
          //         icon: const Icon(Icons.edit, size: 28),
          //         tooltip: 'Edit Profile',
          //         onPressed: () {
          //           AutoRouter.of(context)
          //               .push(const EditCustomerProfileRoute());
          //         },
          //       ),
          //     ],
          //   ),
          // ),
          const SizedBox(height: 20),
          const Center(
            child: CircleAvatar(
              radius: 64,
              backgroundImage: AssetImage('lib/assets/images/user.png'),
            ),
          ),
          const SizedBox(height: 16),
          const Center(
            child: Text(
              'Andrew Tote',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            // CustomText(
            //   textAlign: TextAlign.center,
            //   text: '${_customerProfileController.userData.value.firstName}'
            //       ' '
            //       '${_customerProfileController.userData.value.lastName}',
            //   style: const TextStyle(
            //     fontWeight: FontWeight.bold,
            //     fontSize: 24,
            //   ),
            // ),
          ),
          const SizedBox(height: 8),
          const Center(
            child: Text(
              'andrew@test.com',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
            // CustomText(
            //   text: '${_customerProfileController.userData.value.email}',
            //   style: TextStyle(
            //     color: Colors.grey[600],
            //     fontSize: 16,
            //   ),
            // ),
          ),
          const SizedBox(height: 16),
          // CustomerProfileDetailsCard(
          //     icon: Icons.add,
          //     title: 'Shoe Points',
          //     subtitle:
          //         '${_customerProfileController.userData.value.shoePoints ?? 0.0}'),
          // CustomerProfileDetailsCard(
          //     icon: Icons.phone,
          //     title: 'Mobile Number',
          //     subtitle: _customerProfileController.userData.value.telephone ??
          //         "Please enter your Mobile Number"),
          // CustomerProfileDetailsCard(
          //     icon: Icons.group_add,
          //     title: 'Main Club',
          //     subtitle:
          //         _customerProfileController.userData.value.mainClubName ??
          //             'Please enter your main club'),
          ElevatedButton(
            onPressed: () {
              context.router.navigate(const EditProfileScreen());
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.fromLTRB(100, 15, 100, 15),
              shape: const StadiumBorder(),
            ),
            child: const Text(
              'Edit Profile',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
