// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:lms_project/constants/constants.dart';
// import 'package:lms_project/modules/campaigns/view/campaigns_view.dart';
// import 'package:lms_project/modules/login/view/login_view.dart';
// import 'package:lms_project/modules/tasks_home/view/tasks_view.dart';
// import 'package:lms_project/utils/ui/ui.dart';
// import 'package:sizer/sizer.dart';
//
// import '../../../config/theme/app_colors.dart';
// import '../../../constants/asset_paths.dart';
//
// class CustomDrawer extends StatelessWidget {
//   const CustomDrawer({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       width: 70.w,
//       child: Column(
//         children: [
//           Container(
//             width: double.infinity,
//             height: 140.sp,
//             padding: EdgeInsets.symmetric(
//               horizontal: pageHorizontalPadding,
//               vertical: pageVerticalPadding,
//             ),
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(testBlurImage),
//                 fit: BoxFit.fill,
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 CircleAvatar(
//                   backgroundColor: AppColors().transparent,
//                   backgroundImage: const AssetImage(testProfileImage),
//                   radius: 20.sp,
//                 ),
//                 CustomText(
//                   text: 'Jessica Shmitz',
//                   fontSize: 12,
//                   color: Theme.of(context).primaryColor,
//                   fontWeight: FontWeight.w500,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     CustomText(
//                       text: 'jessica-shmitz@agent.com',
//                       fontSize: 10,
//                       color: Theme.of(context).primaryColor,
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 15.sp,
//           ),
//           _drawerItem(
//             image: drawerCampaignImage,
//             context: context,
//             text: 'Campaign',
//             onTap: () {
//               Get.offAll(() => CampaignsView());
//             },
//           ),
//           SizedBox(
//             height: 5.sp,
//           ),
//           _drawerItem(
//             context: context,
//             image: drawerTasksImage,
//             text: 'Task List',
//             onTap: () {
//               Get.offAll(() => TasksView());
//             },
//           ),
//           const Spacer(),
//           _drawerLogoutItem()
//         ],
//       ),
//     );
//   }
//
//   Widget _drawerItem({
//     required String image,
//     required String text,
//     required Function onTap,
//     required context,
//   }) {
//     return InkWell(
//       onTap: () {
//         onTap.call();
//       },
//       child: Container(
//         height: 7.h,
//         padding: EdgeInsets.symmetric(horizontal: pageHorizontalPadding),
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             Image.asset(
//               image,
//               width: 15.sp,
//               height: 15.sp,
//             ),
//             SizedBox(
//               width: 12.w,
//             ),
//             CustomText(
//               text: text,
//               fontSize: 12,
//               color: Theme.of(context).colorScheme.onPrimary,
//               fontWeight: FontWeight.w500,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _drawerLogoutItem() {
//     return InkWell(
//       onTap: () {
//         Get.offAll(() => LoginView());
//       },
//       child: Container(
//         height: 7.h,
//         padding: EdgeInsets.symmetric(horizontal: pageHorizontalPadding),
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             Image.asset(
//               logoutImage,
//               width: 12.sp,
//               height: 12.sp,
//             ),
//             SizedBox(
//               width: 12.w,
//             ),
//             CustomText(
//               text: 'Logout',
//               fontSize: 10,
//               fontWeight: FontWeight.w500,
//               color: AppColors().red,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
