// import 'package:dio/dio.dart';
// import 'package:flutter_cache_manager/flutter_cache_manager.dart';
// import 'package:image_cropper/image_cropper.dart';

// class CustomerProfilService {
//   Future<void> saveImage(CroppedFile imageFile,
//       {required String fileName, required String imageType}) async {
//     try {
//       var formData = FormData.fromMap({
//         'image': await MultipartFile.fromFile(imageFile.path),
//         'filename': fileName,
//         'imageType': imageType,
//       });
//       var res = await Dio().post(
//         'https://uatsoffcricket.gangfy.com/soffCricketAPI/storage/upload/$fileName/$imageType',
//         data: formData,
//       );
//       if (res.statusCode == 200) {
//         print('Image saved successfully!');
//         // await DefaultCacheManager().putFile(
//         //   'https://your-api-url.com/$filename',
//         //   imageFile,
//         // );
//       } else {
//         print('Error saving image: ${res.statusMessage}');
//       }
//     } catch (e) {
//       print('Error saving image: $e');
//     }
//   }

//   // Future<void> saveImage(
//   //     CroppedFile file, String filename, String imagetype) async {
//   //   final url =
//   //       'https://uatsoffcricket.gangfy.com/soffCricketAPI/storage/upload/$filename/$imagetype';
//   //   final dio = Dio();

//   //   try {
//   //     final formData = FormData.fromMap({
//   //       'file': await MultipartFile.fromFile(file.path, filename: filename),
//   //     });
//   //     final response = await dio.post(url, data: formData);

//   //     if (response.statusCode == 200) {
//   //       // handle success response
//   //       print('Image saved successfully!');
//   //     } else {
//   //       // handle error response
//   //       print('Error saving image: ${response.statusMessage}');
//   //     }
//   //   } catch (e) {
//   //     // handle error
//   //     print('Error saving image: $e');
//   //   }
//   // }
// }
