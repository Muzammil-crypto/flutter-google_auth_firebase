import 'package:flutter/material.dart';

class PasswordVisibility extends StatelessWidget {
  final bool obscurePassword;
  final Function onTap;

  const PasswordVisibility({
    Key? key,
    required this.obscurePassword,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap.call();
      },
      child: Icon(
        obscurePassword
            ? Icons.visibility_outlined
            : Icons.visibility_off_outlined,
        color: Theme.of(context).colorScheme.onPrimary,
      ),
    );
  }
}
