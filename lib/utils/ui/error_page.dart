import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';

import '../../constants/app_constants.dart';
import '../../constants/asset_paths.dart';
import 'custom_text.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return SizedBox(
      // height: 70.h,
      // width: 95.w,
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: pageHorizontalPadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                isDarkMode ? errorDarkImage : errorImage,
                // width: 120.sp,
                // height: 120.sp,
              ),
              // SizedBox(
              //   height: 12.h,
              // ),
              CustomText(
                text: 'No Notifications yet!',
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              CustomText(
                text: 'We’ll notify you once we have\nsomething for you.',
                fontSize: 8,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
