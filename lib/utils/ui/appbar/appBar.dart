// import 'package:flutter/material.dart';
// import 'package:lms_project/constants/app_constants.dart';
// import 'package:lms_project/constants/asset_paths.dart';
// import 'package:lms_project/utils/ui/ui.dart';
// import 'package:sizer/sizer.dart';
//
// class MyAppBar extends StatelessWidget {
//   final Widget leadingIcon;
//   final String title;
//   final Color color;
//   final Function(BuildContext context) onTap;
//   final Widget? child;
//   final double? height;
//   final Color? titleColor;
//
//   const MyAppBar({
//     Key? key,
//     required this.leadingIcon,
//     required this.title,
//     required this.color,
//     required this.onTap,
//     this.child,
//     this.height,
//     this.titleColor,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: height ?? 140.sp,
//       padding: EdgeInsets.only(top: 5.h),
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: const BorderRadius.only(
//           bottomLeft: Radius.circular(30),
//           bottomRight: Radius.circular(30),
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisSize: MainAxisSize.max,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Builder(
//                 builder: (context) {
//                   return InkWell(
//                     onTap: () {
//                       onTap.call(context);
//                     },
//                     child: Padding(
//                       padding: EdgeInsets.only(
//                         left: pageHorizontalPadding,
//                       ),
//                       child: leadingIcon,
//                     ),
//                   );
//                 },
//               ),
//               SizedBox(
//                 width: pageHorizontalPadding,
//               ),
//               CustomText(
//                 text: title,
//                 fontSize: 16,
//                 fontWeight: FontWeight.w600,
//                 color: titleColor ?? Theme.of(context).colorScheme.onSurface,
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 1.h,
//           ),
//           Padding(
//             padding: EdgeInsets.only(
//               left: pageHorizontalPadding,
//             ),
//             child: child ?? const SizedBox(),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class AppBarBackIcon extends StatelessWidget {
//   final Color? color;
//
//   const AppBarBackIcon({
//     Key? key,
//     this.color,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Image.asset(
//       backImage,
//       width: 15.sp,
//       height: 15.sp,
//       color: color ?? Theme.of(context).colorScheme.onSurface,
//     );
//   }
// }
//
// class AppBarMenuIcon extends StatelessWidget {
//   const AppBarMenuIcon({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Image.asset(
//       menuImage,
//       width: 18.sp,
//       height: 18.sp,
//       color: Theme.of(context).colorScheme.onSurface,
//     );
//   }
// }
