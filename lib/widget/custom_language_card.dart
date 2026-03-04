import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageCard extends StatelessWidget {
  final String title;
  final String flagPath;
  final bool isSelected;
  final VoidCallback onTap;

  const LanguageCard({
    super.key,
    required this.title,
    required this.flagPath,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        // border: Border.all(
        //   color: isSelected ? const Color(0xFF2F6FED) : Colors.grey.shade300,
        // ),
      ),
      child: Row(
        children: [
          ///-------------- Flag -----------------
          ClipRRect(
            borderRadius: BorderRadius.circular(30.r),
            child: Image.asset(
              flagPath,
              height: 32.h,
              width: 32.w,
              //fit: BoxFit.cover,
            ),
          ),

          SizedBox(width: 15.w),

          ///------------------- Language Name ------------------
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          /// Button
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: isSelected
                  ? const Color(0xFF2F6FED)
                  : Color(0xFFEBEBEB),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Row(
              children: [
                if (isSelected)
                  Icon(Icons.check, color: Colors.white, size: 16.sp),
                if (isSelected) SizedBox(width: 5.w),
                Text(
                  isSelected ? "Selected" : "Select",
                  style: TextStyle(
                    color: isSelected
                        ? Colors.white
                        : Colors.grey.shade600,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}