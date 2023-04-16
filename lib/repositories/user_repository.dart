// import 'package:get/get.dart';
// import 'package:helpcar/models/user_model.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class UserRepository extends GetxController {
//   static UserRepository get instance => Get.find();
//   // final _db = FirebaseFirestore.instance;

//   createUser(UserModel user) async {
//     await _db
//         .collection("Users")
//         .add(user.toJson())
//         .whenComplete(() => print('saved user data'))
//         .catchError((error) {
//       print(error.toString());
//     });
//   }
// }
