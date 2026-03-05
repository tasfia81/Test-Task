import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'About Us',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8.h),
          Container(
            height: 216.h,
            width: 335.w,
            decoration: BoxDecoration(
              color: Color(0xFFF9F9FB),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              'We are a dedicated home service\nprovider offering a wide range of\nexpert solutions to make your life\neasier. From plumbing, electrical work,\nand carpentry to cleaning, painting,\nand appliance repair, our skilled team is\nhere to tackle any task with precision\nand care.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: Color(0xFF636F85),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            'Date of Birth',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8.h),
          Container(
            height: 52.h,
            width: 335.w,
            decoration: BoxDecoration(
              color: Color(0xFFF9F9FB),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Date of birth',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: Color(0xFF636F85),
                  ),
                ),
                Icon(Icons.date_range_outlined),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            'Gender',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8.h),
          Container(
            height: 52.h,
            width: 335.w,
            decoration: BoxDecoration(
              color: Color(0xFFF9F9FB),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Gender',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: Color(0xFF636F85),
                  ),
                ),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
