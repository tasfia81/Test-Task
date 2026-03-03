import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/assets_path.dart';
import 'custom_primary_button.dart';

class SubmitShowdialog extends StatelessWidget {
  const SubmitShowdialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 400.h.clamp(390, 410),
          width: 332.w.clamp(322, 342),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.r),
            color: Colors.white,
          ),
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
            ),
            icon: Image.asset(
              AssetsPath.submit_list,
              height: 134.h.clamp(130, 134),
              width: 134.w.clamp(130, 134),
            ),
            title: const Text(
              'Success',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            content: const Text(
              'Your password is succesfully\ncreated',
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
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
