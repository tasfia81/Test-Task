import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/core/app_route.dart';
import 'package:test_task/widget/alert_password.dart';
import 'package:test_task/widget/custom_back_button.dart';
import 'package:test_task/widget/custom_primary_button.dart';
import 'package:test_task/widget/custom_rich_text.dart';
import 'package:test_task/widget/custom_text_field.dart';
import 'package:test_task/widget/step_line_indicator.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBackButton(
                  backgroundColor: Colors.white,
                  iconColor: Colors.black,
                ),
                SizedBox(height: 15.h),
                Text(
                  'Welcome to Eduline',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Let’s join to Eduline learning ecosystem & meet\nour professional mentor. It’s Free!',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp.clamp(13, 14),
                    color: Color(0xFF636F85),
                  ),
                ),
                SizedBox(height: 18.h),
                CustomTextField(
                  label: "Email Address",
                  hintText: "Enter your email",
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 10.h),
                CustomTextField(
                  label: "Full Name",
                  hintText: "Enter your name",
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
                SizedBox(height: 15.h),
                StepLineIndicator(totalSteps: 4, currentStep: 3),
                SizedBox(height: 18.h),
                AlertPassword(),
                SizedBox(height: 30.h),
                CustomPrimaryButton(text: 'Label', onTap: () {
                  Get.toNamed(AppRoute.labelVerify);
                }),
                SizedBox(height: 20.h),
                GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoute.signIn);
                  },
                  child: Center(
                    child: CustomRichText(
                      normalText: 'Already have an account?',
                      highlightedText: ' Sign In',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
