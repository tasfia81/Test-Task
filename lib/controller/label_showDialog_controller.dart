import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/assets_path.dart';
import '../widget/custom_primary_button.dart';

class LabelShowDialogController extends GetxController {

  void showSuccessDialog() {
    Get.dialog(
      AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        icon: Image.asset(
          AssetsPath.star,
          height: 90.h,
          width: 90.w,
        ),
        title:  Text(
          'Congratulations!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
            color: Colors.black,
          ),
        ),
        content:  Text(
          'Your account is ready to use. You will be\nredirected to the home page in a few\nseconds',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xFF6B6B6B),
          ),
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          CircularProgressIndicator(),
        ],
        // actions: [
        //   CustomPrimaryButton(
        //     height: 48.h,
        //     width: 182.w,
        //     text: 'Continue',
        //     onTap: () {
        //       Get.back();
        //     },
        //   ),
        // ],
      ),
    );
  }
}