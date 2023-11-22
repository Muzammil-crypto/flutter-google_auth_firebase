// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
// import 'package:get/get.dart';
// import 'package:lms_project/modules/campaign_call_finalize/view/campaign_call_finalize_view.dart';
// import 'package:lms_project/utils/ui/no_internet_page.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:phone_state/phone_state.dart';
//
// import '../../constants/app_constants.dart';
//
// class Controller extends GetxController {
//   static RxBool isConnected = false.obs;
//   RxBool granted = false.obs;
//   PhoneStateStatus status = PhoneStateStatus.NOTHING;
//   String viewName = "";
//
//   @override
//   void onInit() {
//     checkConnection();
//     getPermission();
//     super.onInit();
//   }
//
//   checkConnection() {
//     Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
//       if (result == ConnectivityResult.none) {
//         isConnected.value = false;
//         Get.to(() => const NoInternetPage());
//         shouldCallBackOnConnectivity = true;
//       } else {
//         if(shouldCallBackOnConnectivity) {
//           Get.back();
//           shouldCallBackOnConnectivity = false;
//         }
//         isConnected.value = true;
//       }
//     });
//   }
//
//   void setStream() {
//     PhoneState.phoneStateStream.listen((event) async {
//       if (event != null) {
//         if (event == PhoneStateStatus.CALL_ENDED) {
//           await Permission.contacts.request();
//           Get.to(
//             () {
//               return CampaignCallFinalizeView();
//             },
//             arguments: viewName,
//           );
//           dispose();
//         }
//         status = event;
//       }
//     });
//   }
//
//   getPermission() async {
//     if (!granted.value) {
//       await requestPermission();
//       getPermission();
//     }
//   }
//
//   requestPermission() async {
//     var status = await Permission.phone.request().obs;
//
//     switch (await status.value) {
//       case PermissionStatus.denied:
//       case PermissionStatus.restricted:
//       case PermissionStatus.limited:
//       case PermissionStatus.permanentlyDenied:
//         granted.value = false;
//         break;
//       case PermissionStatus.granted:
//         granted.value = true;
//         break;
//     }
//   }
//
//   callNumber(String number) async {
//     getPermission();
//     await FlutterPhoneDirectCaller.callNumber(number);
//   }
// }
