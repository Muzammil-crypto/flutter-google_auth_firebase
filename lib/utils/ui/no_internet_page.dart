import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';

import '../../constants/app_constants.dart';
import '../../constants/asset_paths.dart';
import 'buttons/primary_button.dart';
import 'custom_text.dart';

class NoInternetPage extends StatelessWidget {
  final Function? onTryAgain;

  const NoInternetPage({
    Key? key,
    this.onTryAgain,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: pageHorizontalPadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                isDarkMode ? noInternetDarkImage : noInternetImage,
                // width: 120.sp,
                // height: 120.sp,
              ),
              // SizedBox(
              //   height: 7.h,
              // ),
              CustomText(
                text: 'No Network!',
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              CustomText(
                text: 'We’ll nofify you once we have\nsomething for you.',
                fontSize: 8,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
              ),
              // SizedBox(
              //   height: 5.h,
              // ),
              // onTryAgain != null
              //     ? PrimaryButton(
              //         text: 'Try again',
              //         onTap: () {
              //           onTryAgain?.call();
              //         })
              //     : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
