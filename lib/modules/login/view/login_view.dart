import 'package:flutter/material.dart';
import 'package:flutter_project_skeleton/config/config.dart';
import 'package:flutter_project_skeleton/modules/login/controller/login_controller.dart';
import 'package:flutter_project_skeleton/utils/ui/buttons/primary_button.dart';
import 'package:flutter_project_skeleton/utils/ui/textfields/custom_textfield.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../utils/ui/ui.dart';
import '../widgets/password_visibility.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final LoginController _controller = Get.put(LoginController());
  final _formKey = GlobalKey<FormState>();
  ValueNotifier userCredential = ValueNotifier('');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ValueListenableBuilder(
        valueListenable: userCredential,
        builder: (context, value, child) {
          return (userCredential.value == '' || userCredential.value == null)
              ? Center(
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                      iconSize: 40,
                      icon: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/2702/2702602.png', // 'https://cdn-icons-png.flaticon.com/512/2702/2702602.png',
                        height: 40,
                        width: 40,
                      ),
                      onPressed: () async {
                        userCredential.value =
                            await _controller.signInWithGoogle();
                        if (userCredential.value != null)
                          print(userCredential.value.user!.email);
                      },
                    ),
                  ),
                )
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Text(
                        userCredential.value.user!.email!,
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      TextButton(
                        onPressed: () async {
                          await _controller.signOutFromGoogle();
                          userCredential.value = '';
                        },
                        child: Text(
                          'Logout',
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                );
        },
        child: Form(
          key: _formKey,
          child: SafeArea(
              child: Padding(
            padding: EdgeInsets.all(20.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                CustomText(
                  text: 'Log In',
                  fontSize: 32,
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontWeight: FontWeight.w700,
                ),
                CustomText(
                  text: 'Enter your details below.',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                SizedBox(
                  height: 6.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: CustomText(
                    text: 'Your Email',
                    fontSize: 14,
                    color: AppColors().grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                CustomTextField(
                  controller: _controller.emailController,
                  keyboardType: TextInputType.emailAddress,
                  validationFunction: (value) {
                    if (value == "" || value.isNull) {
                      return "Please type correct email";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 15.sp,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: CustomText(
                    text: 'Password',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors().grey,
                  ),
                ),
                Obx(() => CustomTextField(
                      controller: _controller.passwordController,
                      obscureText: _controller.obscurePassword.value,
                      suffixIcon: PasswordVisibility(
                        obscurePassword: _controller.obscurePassword.value,
                        onTap: _controller.hidePassword,
                      ),
                    )),
                SizedBox(
                  height: 10.sp,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: CustomText(
                    text: 'Forget password?',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors().grey,
                  ),
                ),
                const Spacer(),
                PrimaryButton(
                  color: AppColors().green,
                  text: 'Sign In with Google',
                  onTap: () {},
                ),
                SizedBox(
                  height: 4.w,
                ),
                PrimaryButton(
                  text: 'Log In',
                  onTap: () {},
                ),
                SizedBox(
                  height: 4.w,
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
