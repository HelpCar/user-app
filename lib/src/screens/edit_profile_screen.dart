import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:helpcar/src/constants/colors.dart';
import 'package:helpcar/src/controllers/profile_controller.dart';
import 'package:helpcar/src/widgets/custom_app_bar.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import '../routes/app_router.gr.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  final ProfileController _ProfileController = Get.find<ProfileController>();

  ImagePicker picker = ImagePicker();
  XFile? image;
  CroppedFile? _croppedFile;
  dynamic pickImageError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: defaultColorScheme.background,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: defaultColorScheme.primary),
          onPressed: () {
            AutoRouter.of(context).pop();
          },
        ),
        title: Text(
          'Edit Profile',
          style: TextStyle(
            color: defaultColorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Stack(
                      children: [
                        // const CircleAvatar(
                        //   radius: 80.0,
                        //   backgroundImage: AssetImage(
                        //       'assets/images/default/user.png'),
                        // ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: _croppedFile != null
                                  ? FileImage(File(_croppedFile!.path))
                                  : const AssetImage(
                                          'lib/assets/images/user.png')
                                      as ImageProvider,
                            ),
                          ),
                          height: 160,
                          width: 160,
                        ),
                        Positioned(
                          bottom: 0.0,
                          right: 0.0,
                          child: Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.edit),
                              color: defaultColorScheme.primary,
                              onPressed: () async {
                                _showImageAlert(context);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // CustomFormField(
                  //   formFieldTitle: 'First Name',
                  //   hintText: 'Please enter your first name',
                  //   controller: _firstNameController,
                  //   inputType: TextInputType.name,
                  //   suffixIcon: Icons.supervised_user_circle_rounded,
                  //   autoFocus: true,
                  //   padding: const EdgeInsets.only(bottom: 16.0),
                  //   textStyle: TextStyle(color: kInputFieldFontColor),
                  //   validator: InputValidator.validateName,
                  //   inputFormatters: [LengthLimitingTextInputFormatter(50)],
                  // ),
                  // CustomFormField(
                  //   formFieldTitle: 'Last Name',
                  //   hintText: 'Please enter your last name',
                  //   controller: _lastNameController,
                  //   inputType: TextInputType.name,
                  //   suffixIcon: Icons.supervised_user_circle_rounded,
                  //   autoFocus: true,
                  //   padding: const EdgeInsets.only(bottom: 16.0),
                  //   textStyle: TextStyle(color: kInputFieldFontColor),
                  //   validator: InputValidator.validateName,
                  //   inputFormatters: [LengthLimitingTextInputFormatter(50)],
                  // ),
                  // CustomFormField(
                  //   formFieldTitle: 'Email',
                  //   hintText: 'Please enter your email',
                  //   controller: _emailController,
                  //   inputType: TextInputType.emailAddress,
                  //   suffixIcon: Icons.email_rounded,
                  //   autoFocus: true,
                  //   padding: const EdgeInsets.only(bottom: 16.0),
                  //   textStyle: TextStyle(color: kInputFieldFontColor),
                  //   validator: InputValidator.validateEmail,
                  //   inputFormatters: [LengthLimitingTextInputFormatter(50)],
                  // ),
                  // CustomFormField(
                  //   formFieldTitle: 'Mobile Number',
                  //   hintText: 'Please enter your mobile number',
                  //   controller: _telephoneNumberController,
                  //   inputType: TextInputType.phone,
                  //   suffixIcon: Icons.phone,
                  //   autoFocus: true,
                  //   padding: const EdgeInsets.only(bottom: 16.0),
                  //   textStyle: TextStyle(color: kInputFieldFontColor),
                  //   validator: InputValidator.validatePhoneNumber,
                  //   inputFormatters: [
                  //     LengthLimitingTextInputFormatter(12),
                  //     maskFormatter
                  //   ],
                  // ),
                  // _customerProfileController.userData.value.canUpdateMainClub!
                  //     ? CustomDropdown(
                  //         title: "Main Club",
                  //         initialValue: _customerProfileController
                  //             .userData.value.mainClubName,
                  //         disabled: !_customerProfileController
                  //             .userData.value.canUpdateMainClub!,
                  //         width: MediaQuery.of(context).size.width,
                  //         items: _customerProfileController.clubList
                  //             .map((club) => club.clubName.toString())
                  //             .toList(),
                  //         onValueChanged: (clubName) {
                  //           final selectedClub = _customerProfileController.clubList
                  //               .firstWhere((club) => club.clubName == clubName);
                  //           _customerProfileController.onClubSelected(selectedClub);
                  //         },
                  //         hint: "Select your main club",
                  //         paddingLeft: 60,
                  //         paddingRight: 60,
                  //         paddingTop: 8,
                  //         paddingBottom: 8,
                  //       )
                  // : const SizedBox(height: 0),
                  const SizedBox(height: 16.0),
                  // Container(
                  //   margin: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                  //   child: SizedBox(
                  //     width: MediaQuery.of(context).size.width,
                  //     height: 60,
                  //     child: OutlinedButton(
                  //       onPressed: () async {
                  //         if (_formKey.currentState!.validate()) {
                  //           _customerProfileController.isLoading.value = true;
                  //           _customerProfileController.lastName.value =
                  //               _lastNameController.value.text;
                  //           _customerProfileController.telephone.value =
                  //               _telephoneNumberController.value.text;
                  //           _customerProfileController.firstName.value =
                  //               _firstNameController.value.text;
                  //           _customerProfileController.email.value =
                  //               _emailController.value.text;
                  //           var user = await _customerProfileController.getUser();
                  //           var apiResponseModel =
                  //               await CustomerService().saveCustomer(user);
                  //           if (apiResponseModel.apiStatus == 201) {
                  //             UserManager _userManager = UserManager();
                  //             var user = UserModel.fromJson(apiResponseModel.data);

                  //             _customerProfileController.userData.value = user;

                  //             await _userManager.setUserData(user);

                  //             _customerProfileController.isLoading.value = false;

                  //             AutoRouter.of(context, watch: true).pop();
                  //           } else {
                  //             _customerProfileController.apiError.value = true;
                  //             _customerProfileController.isLoading.value = false;
                  //             toastBottom(
                  //                 'Something went wrong, Unable to update profile');
                  //           }
                  //         }
                  //       },
                  //       child: Text(
                  //         'Update',
                  //         style: TextStyle(color: kLayoutLightColor),
                  //       ),
                  //       style: ButtonStyle(
                  //         backgroundColor:
                  //             MaterialStateProperty.all<Color>(kPrimaryColor),
                  //         shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.circular(14.0))),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  // Obx(() => _customerProfileController.apiError.value == true
                  //     ? Container(
                  //         height: 40,
                  //         width: double.infinity,
                  //         margin: const EdgeInsets.fromLTRB(20, 24, 20, 0),
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           children: [
                  //             const Text("Something Went Wrong Try again"),
                  //             const SizedBox(
                  //               width: 10,
                  //             ),
                  //             IconButton(
                  //                 onPressed: () {
                  //                   _customerProfileController.apiError.value =
                  //                       false;
                  //                 },
                  //                 icon: Icon(Icons.cancel_outlined,
                  //                     color: kWarningColor))
                  //           ],
                  //         ),
                  //         decoration: BoxDecoration(
                  //             color: kWarningBackground,
                  //             border: Border.all(color: kWarningColor)),
                  //       )
                  //     : Container(
                  //         height: 20,
                  //       )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showImageAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            title: const Text('Select a Picture From'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.pop(context,
                        _ProfileController.uploadImageFromCamera(updateUI));
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 30, 10),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.camera,
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text('Camera'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context,
                        _ProfileController.uploadImageFromGallery(updateUI));
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 30, 10),
                    child: Row(children: const [
                      Icon(
                        Icons.photo,
                        size: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Gallery'),
                    ]),
                  ),
                )
              ],
            ),
          );
        });
  }

  void updateUI(CroppedFile newCroppedFile) {
    setState(() {
      _croppedFile = newCroppedFile;
    });
    // print(newCroppedFile.path);
    // _ProfileController.saveProfileImage(newCroppedFile);
  }
}
