import 'package:flutter/material.dart';
import 'package:flutter_project_skeleton/config/config.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool? obscureText;
  final TextInputType? keyboardType;
  Widget? suffixIcon;
  String? Function(String?)? validationFunction;

  CustomTextField({
    Key? key,
    required this.controller,
    this.obscureText,
    this.suffixIcon,
    this.validationFunction,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextFormField(
        validator: validationFunction,
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText ?? false,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 6, top: 10),
          enabledBorder: _inputBorder(),
          focusedBorder: _inputBorder(),
          suffixIcon: suffixIcon,
        ),
        textAlignVertical: TextAlignVertical.center,
      ),
    );
  }

  OutlineInputBorder _inputBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          width: .5,
          color: AppColors().inputBorderColor,
        ),
      );
}
