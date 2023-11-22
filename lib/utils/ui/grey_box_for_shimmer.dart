import 'package:flutter/material.dart';

import '../../config/theme/app_colors.dart';
// import 'package:sizer/sizer.dart';

class GreyBox extends StatelessWidget {
  final double? width;
  final double height;

  const GreyBox({
    Key? key,
    this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: width?.sp ?? double.infinity,
      // height: height.sp,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: AppColors().inputBorderColor,
          width: 1,
        ),
      ),
    );
  }
}
