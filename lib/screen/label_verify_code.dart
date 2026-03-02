import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/widget/custom_back_button.dart';
import 'package:test_task/widget/custom_rich_text.dart';

class LabelVerifyCode extends StatefulWidget {
  const LabelVerifyCode({super.key});

  @override
  State<LabelVerifyCode> createState() => _LabelVerifyCodeState();
}

class _LabelVerifyCodeState extends State<LabelVerifyCode> {
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
                'Verify Code',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            CustomRichText(
              normalText: 'Please enter the code we just sent to email',
              highlightedText: 'pristia@gmail.com',
            ),
          ],
        ),
      ),
    );
  }
}
