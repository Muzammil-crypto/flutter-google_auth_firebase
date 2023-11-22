import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
// import 'package:sizer/sizer.dart';

import '../../constants/asset_paths.dart';
import '../enums/enums.dart';
import '../network/general_api_state.dart';
import 'error_page.dart';

class APIStateWidget extends StatelessWidget {
  final GeneralApiState generalApiState;
  final Widget successWidget;
  final void Function()? onInitialState;
  final void Function()? onSuccessState;
  final void Function()? onFailureState;
  final void Function()? onRetry;
  final Widget? failureWidget;
  final Widget? loadingWidget;
  final Widget? initialWidget;

  const APIStateWidget({
    Key? key,
    required this.successWidget,
    required this.generalApiState,
    this.onInitialState,
    this.onSuccessState,
    this.onFailureState,
    this.onRetry,
    this.initialWidget,
    this.loadingWidget,
    this.failureWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (generalApiState.apiCallState) {
      case APICallState.initial:
        return _buildInitialWidget();
      case APICallState.loading:
        return _buildLoadingWidget();
      case APICallState.failure:
        return _buildFailureWidget();
      case APICallState.loaded:
        onSuccessState?.call();
        return successWidget;
    }
  }

  Widget _buildFailureWidget() {
    onFailureState?.call();
    return failureWidget ?? const ErrorPage();
  }

  Widget _buildLoadingWidget() =>
      loadingWidget ??
      Center(
        child: Lottie.asset(
          loader,
          // width: 20.h,
          // height: 20.h,
        ),
      );

  Widget _buildInitialWidget() {
    onInitialState?.call();
    return initialWidget ?? const SizedBox();
  }
}
