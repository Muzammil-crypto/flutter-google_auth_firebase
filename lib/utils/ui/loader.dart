import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../constants/asset_paths.dart';
// import 'package:sizer/sizer.dart';

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black.withOpacity(.5),
      type: MaterialType.transparency,
      child: Center(
        child: Lottie.asset(
          loader,
          // width: 20.h,
          // height: 20.h,
        ),
      ),
    );
  }
}
