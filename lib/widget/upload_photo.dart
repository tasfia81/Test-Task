import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/assets_path.dart';

class UploadPhoto extends StatelessWidget {
  const UploadPhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(AssetsPath.photo, height: 44.h, width: 44.w),
          SizedBox(height: 12.h),
          Text(
            'Upload photo',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18.sp,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            textAlign: TextAlign.center,
            'Upload the front side of your document\nSupports: JPG, PNG, PDF',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xFF636F85),
            ),
          ),
          SizedBox(height: 15.h),
          Container(
            height: 35.h,
            width: 255.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8000.r),
              border: Border.all(
                color: Colors.black, // border color
                width: 1,           // border thickness
              ),
            ),
            child: Center(
              child: Text('Choose a file',style: TextStyle(
                  fontWeight: FontWeight.w400,fontSize: 12.sp,color: Colors.black
              ),),
            ),
          )
        ],
      ),
    );
  }
}
