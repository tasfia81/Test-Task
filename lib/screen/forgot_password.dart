import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/core/app_route.dart';
import 'package:test_task/widget/custom_back_button.dart';
import 'package:test_task/widget/custom_primary_button.dart';
import 'package:test_task/widget/custom_text_field.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomBackButton(iconColor: Colors.black),
            SizedBox(height: 30.h),
            Center(
              child: Text(
                'Forgot Password',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24.sp,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 8.h),
            Center(
              child: Text(
                'Enter your email, we will send a\n     verification code to email',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF636F85),
                ),
              ),
            ),
            SizedBox(height: 40.h),
            CustomTextField(
              label: "Email Address",
              hintText: "Enter your email",
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 50.h),
            CustomPrimaryButton(
              text: 'Continue',
              onTap: () {
                Get.toNamed(AppRoute.resetPassword);
              },
            ),
          ],
        ),
      ),
    );
  }
}
