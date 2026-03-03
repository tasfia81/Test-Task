import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/core/app_route.dart';
import 'package:test_task/widget/custom_back_button.dart';
import 'package:test_task/widget/custom_primary_button.dart';

import '../widget/custom_text_field.dart';
import 'package:get/get.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomBackButton(
              iconColor: Colors.black,
            ),
            SizedBox(height: 30.h,),
            Center(
              child: Text(
                'Reset Password',
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
                'Your password must be at least 8 characters\nlong and include a combination of letters,\nnumbers',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp.clamp(13, 14),
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF636F85),
                ),
              ),
            ),
            SizedBox(height: 40.h),
            CustomTextField(
              label: "New Password",
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
            SizedBox(height: 15.h),
            CustomTextField(
              label: "Confirm New Password",
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
            SizedBox(height: 40.h),
            CustomPrimaryButton(text: 'Submit', onTap: (){
              Get.toNamed(AppRoute.submitVerify);
            })
          ],
        ),
      ),
    );
  }
}
