// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
//
// import '../../../config/theme/app_colors.dart';
// import '../../../constants/app_constants.dart';
// import '../custom_text.dart';
//
// class CustomDropDown extends StatefulWidget {
//   final List<String> items;
//   final Function(String value) kOnChanged;
//
//   const CustomDropDown({
//     Key? key,
//     required this.items,
//     required this.kOnChanged,
//   }) : super(key: key);
//
//   @override
//   State<CustomDropDown> createState() => _CustomDropDownState();
// }
//
// class _CustomDropDownState extends State<CustomDropDown> {
//   String? selectedValue;
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonHideUnderline(
//       child: DropdownButton2(
//         style: TextStyle(
//           color: Theme.of(context).colorScheme.onPrimary,
//         ),
//         buttonWidth: double.infinity,
//         buttonHeight: 40.sp,
//         hint: CustomText(
//           text: 'Select',
//           fontSize: 14,
//           fontWeight: FontWeight.w300,
//         ),
//         icon: Icon(
//           Icons.expand_more,
//           color: Theme.of(context).colorScheme.onPrimary,
//         ),
//         items: widget.items
//             .map((item) => DropdownMenuItem<String>(
//                   value: item,
//                   child: CustomText(
//                     text: item,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ))
//             .toList(),
//         value: selectedValue,
//         onChanged: (value) {
//           setState(() {
//             selectedValue = value as String;
//           });
//           widget.kOnChanged(value as String);
//         },
//         buttonElevation: 0,
//         buttonDecoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           border: Border.all(
//             width: 0.5,
//             color: AppColors().grey,
//           ),
//         ),
//         buttonPadding: EdgeInsets.symmetric(horizontal: pageHorizontalPadding),
//       ),
//     );
//   }
// }
