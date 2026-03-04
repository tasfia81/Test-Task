import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/controller/label_showDialog_controller.dart';
import 'package:test_task/core/app_route.dart';
import 'package:test_task/utils/assets_path.dart';
import 'package:test_task/widget/custom_back_button.dart';
import 'package:test_task/widget/custom_primary_button.dart';
import 'package:test_task/widget/custom_rich_text.dart';
import "package:pin_code_fields/pin_code_fields.dart";
import 'package:get/get.dart';

class LabelVerifyCode extends StatefulWidget {
  const LabelVerifyCode({super.key});

  @override
  State<LabelVerifyCode> createState() => _LabelVerifyCodeState();
}

class _LabelVerifyCodeState extends State<LabelVerifyCode> {
  final TextEditingController _otpController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) => Padding(
        padding: EdgeInsets.all(24),
        child: AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          icon: Image.asset(
            AssetsPath.label_list,
            height: 134.h.clamp(130, 134),
            width: 134.w.clamp(130, 134),
          ),
          title: const Text(
            'Successfully Registered',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          content: const Text(
            textAlign: TextAlign.center,
            'Your account has been registered\nsuccessfully, now let’s enjoy our features!',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF636F85),
            ),
          ),
          actions: [
            CustomPrimaryButton(
              height: 48.h,
              width: 182.w,
              text: 'Continue',
              onTap: () {
                Get.toNamed(AppRoute.enableLocation);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
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
                    fontSize: 24.sp,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              CustomRichText(
                normalText: 'Please enter the code we just sent to email',
                highlightedText: ' pristia@gmail.com',
                normalColor: Color(0xFF636F85),
                highlightedColor: Colors.black,
                highlightedWeight: FontWeight.w400,
              ),
              SizedBox(height: 50.h),
              PinCodeTextField(
                appContext: context,
                length: 4,
                controller: _otpController,
                //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                animationType: AnimationType.fade,
                animationDuration: Duration(milliseconds: 300),
                keyboardType: TextInputType.number,
                // enableActiveFill: true,
                backgroundColor: Colors.transparent,
                cursorColor: Colors.black,

                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(16.r),
                  fieldHeight: 56.h.clamp(48, 56),
                  fieldWidth: 56.w.clamp(48, 56),

                  // Border Colors
                  activeColor: const Color(0xFFE3E3E9),
                  selectedColor: const Color(0xFFE3E3E9),
                  inactiveColor: const Color(0xFFE3E3E9),

                  // Fill Colors (IMPORTANT)
                  activeFillColor: Colors.white,
                  selectedFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                ),

                onChanged: (value) {},

                onCompleted: (value) {
                  print("OTP Completed: $value");
                  if (value == "1234") {
                    Future.delayed(Duration(milliseconds: 200), () {
                      _showDialog();
                      // LabelShowDialogController();
                    });
                  } else {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text("Invalid OTP")));
                  }
                },

                beforeTextPaste: (text) {
                  return true;
                },
              ),
              SizedBox(height: 60.h),
              Center(
                child: CustomRichText(
                  normalText: 'Resend code in ',
                  highlightedText: '00:48',
                  normalColor: Color(0xFF636F85),
                  highlightedColor: Colors.black,
                  highlightedWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }
}
