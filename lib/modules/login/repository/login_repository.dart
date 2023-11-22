// import 'dart:convert';
//
// import 'package:get/get.dart';
// import 'package:lms_project/modules/login/model/login_model.dart';
// import 'package:lms_project/utils/network/backend_repository.dart';
// import 'package:lms_project/utils/ui/snackbar.dart';
//
// class LoginRepository {
//   login(LoginModel user) async {
//     String loginResponse = await BackendRepository().login(user);
//     if (loginResponse == "") {
//       Get.back();
//       getErrorSnackbar(
//         title: 'login error',
//         message: "Unable to Login, Check Credentials or contact with admin",
//       );
//
//       return;
//     }
//     var json = jsonDecode(loginResponse);
//     return LoginModel.fromJson(json);
//   }
// }
