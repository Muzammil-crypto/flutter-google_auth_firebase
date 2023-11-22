import 'package:flutter/material.dart';

import 'custom_text.dart';

class TopBoxChildText extends StatelessWidget {
  final String text;
  final Color? textColor;

  const TopBoxChildText({
    Key? key,
    required this.text,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: text,
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: textColor,
    );
  }
}
