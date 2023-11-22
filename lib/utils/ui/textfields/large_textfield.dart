// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
//
// import '../../../config/theme/app_colors.dart';
// import '../../../constants/constants.dart';
//
// class LargeTextField extends StatelessWidget {
//   final TextEditingController controller;
//
//   const LargeTextField({Key? key, required this.controller}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: 20.h,
//       padding: EdgeInsets.symmetric(horizontal: pageHorizontalPadding),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         border: Border.all(
//           width: 0.5,
//           color: AppColors().grey,
//         ),
//       ),
//       child: TextFormField(
//         controller: controller,
//         minLines: 5,
//         maxLines: 10,
//         style: const TextStyle(
//           fontSize: 14,
//           fontWeight: FontWeight.normal,
//         ),
//         decoration: const InputDecoration(
//           border: InputBorder.none,
//         ),
//       ),
//     );
//   }
// }
