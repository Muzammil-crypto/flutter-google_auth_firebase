// import 'package:flutter/material.dart';
// import 'package:lms_project/utils/helpers/extensions.dart';
// import 'package:sizer/sizer.dart';
//
// import '../../../config/theme/app_colors.dart';
// import '../../../constants/app_constants.dart';
// import '../../../constants/asset_paths.dart';
// import '../../services/date_picker_service.dart';
// import '../custom_text.dart';
//
// class DateTimeWidget extends StatefulWidget {
//   final Function(DateTime date, DateTime time) onDateTimePicked;
//
//   const DateTimeWidget({Key? key, required this.onDateTimePicked})
//       : super(key: key);
//
//   @override
//   State<DateTimeWidget> createState() => _DateTimeWidgetState();
// }
//
// class _DateTimeWidgetState extends State<DateTimeWidget> {
//   String dateTimeDisplay = '';
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       customBorder: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15),
//       ),
//       onTap: () async {
//         DateTime date = await DateTimePickerService().datePicker(context) ?? '';
//         DateTime time = await DateTimePickerService().timePicker(context) ?? '';
//         setState(() {
//           dateTimeDisplay =
//               '${date.toFormattedDateTimeString()} ${formattedTime(time)}';
//         });
//         widget.onDateTimePicked(date, time);
//       },
//       child: Container(
//         width: double.infinity,
//         height: 38.sp,
//         padding: EdgeInsets.symmetric(horizontal: pageHorizontalPadding),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           border: Border.all(
//             width: 0.5,
//             color: AppColors().grey,
//           ),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             CustomText(
//               text: dateTimeDisplay,
//               fontSize: 14,
//               fontWeight: FontWeight.w400,
//             ),
//             Image.asset(
//               calendarIcon,
//               width: 20.sp,
//               height: 20.sp,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
