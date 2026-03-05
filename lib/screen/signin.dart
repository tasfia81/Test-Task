import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/core/app_route.dart';
import 'package:test_task/utils/assets_path.dart';
import 'package:test_task/widget/custom_primary_button.dart';
import 'package:test_task/widget/custom_rich_text.dart';

import '../widget/custom_text_field.dart';
import 'package:get/get.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isObscure = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      Image.asset(AssetsPath.bulb_1, height: 70.h, width: 70.h),
                      SizedBox(height: 15.h),
                      Text(
                        'Welcome Back!',
                        style: TextStyle(
                          fontSize: 32.sp.clamp(30, 32),
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Please login first to start your Theory Test.',
                        style: TextStyle(
                          fontSize: 14.sp.clamp(13, 14),
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF64748B),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                CustomTextField(
                  label: "Email Address",
                  hintText: "Enter your email",
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 10.h),
                CustomTextField(
                  label: "Password",
                  hintText: "Enter your password",
                  obscureText: _isObscure,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    icon: Icon(
                      _isObscure
                          ? Icons.visibility_off_outlined
                          : Icons.visibility,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          activeColor: Color(0xFF1B6EF7),
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        Text(
                          'Remember Me',
                          style: TextStyle(
                            fontSize: 14.sp.clamp(13, 14),
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF64748B),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoute.forgotPassword);
                      },
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp.clamp(13, 14),
                          color: Color(0xFF64748B),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                CustomPrimaryButton(
                  text: 'Sign In',
                  onTap: () {
                    Get.toNamed(AppRoute.homeScreen);
                  },
                ),
                SizedBox(height: 15.h),
                CustomRichText(
                  normalText: 'New to Theory?',
                  highlightedText: ' Create Account',
                  onTap: () {
                    Get.toNamed(AppRoute.signUp);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
