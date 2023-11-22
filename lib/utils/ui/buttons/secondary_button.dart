// import 'package:flutter/material.dart';
// import 'package:lms_project/config/config.dart';
//
// import '../custom_text.dart';
//
// class SecondaryButton extends StatelessWidget {
//   Widget child;
//   Function onTap;
//
//   SecondaryButton({
//     Key? key,
//     required this.child,
//     required this.onTap,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return OutlinedButton(
//       onPressed: () {
//         onTap.call();
//       },
//       style: ButtonStyle(
//         foregroundColor: MaterialStateProperty.resolveWith<Color>(
//           (Set<MaterialState> states) => AppColors().transparent,
//         ),
//         side: MaterialStateProperty.resolveWith<BorderSide>(
//           (Set<MaterialState> states) =>
//               BorderSide(color: AppColors().secondary),
//         ),
//       ),
//       child: child,
//     );
//   }
// }
