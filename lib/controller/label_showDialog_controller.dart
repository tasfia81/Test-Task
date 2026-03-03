import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/assets_path.dart';
import '../widget/custom_primary_button.dart';

class LabelShowDialogController extends GetxController{
  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) =>
          Padding(
            padding: EdgeInsets.all(24),
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r),
              ),
              icon: Image.asset(
                  AssetsPath.label_list, height: 134.h.clamp(130, 134),
                  width: 134.w.clamp(130, 134)),
              title: const Text(
                'Successfully Registered',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              content: const Text(textAlign: TextAlign.center,
                'Your account has been registered\nsuccessfully, now let’s enjoy our features!',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF636F85),
                ),
              ),
              actions: [CustomPrimaryButton(
                  height: 48.h,
                  width: 182.w,
                  text: 'Continue', onTap: () {})
              ],
            ),
          ),
    );
  }
}