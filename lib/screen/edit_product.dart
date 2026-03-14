import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_task/core/app_route.dart';
import 'package:test_task/utils/assets_path.dart';
import 'package:test_task/widget/custom_primary_button.dart';

import '../widget/upload_photo.dart';

class EditProduct extends StatefulWidget {
  const EditProduct({super.key});

  @override
  State<EditProduct> createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
        centerTitle: true,
        title: Text(
          'Edit Product',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              UploadPhoto(),
              SizedBox(height: 30.h),
              Text(
                'Product Name',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 12.h),
              Container(
                height: 34.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(bottom: BorderSide(color: Color(0xFFE3E3E9))),
                ),
                child: Text(
                  'Type product name',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: Color(0xFF636F85),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Select Category',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 12.h),
              Container(
                height: 34.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(bottom: BorderSide(color: Color(0xFFE3E3E9))),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Type category',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: Color(0xFF636F85),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_arrow_down_rounded),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Description of Service',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 12.h),
              Container(
                height: 34.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(bottom: BorderSide(color: Color(0xFFE3E3E9))),
                ),
                child: Text(
                  'Type service description',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: Color(0xFF636F85),
                  ),
                ),
              ),
              SizedBox(height: 25.h),
              Text(
                'Stoke',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Container(
                    height: 34.h,
                    width: 22.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: Color(0xFF1B6DF3)),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Color(0xFF1B6DF3),
                      ),
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    'Available',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF636F85),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Container(
                    height: 34.h,
                    width: 22.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: Color(0xFF636F85)),
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    'Not Available',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF636F85),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Text(
                'Product Price',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  Image.asset(AssetsPath.dollerIcon, height: 22.h, width: 22.w),
                  SizedBox(width: 4.w),
                  Text(
                    'Enter Price',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: Color(0xFF636F85),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25.h),
              CustomPrimaryButton(
                text: 'Submit',
                onTap: () {
                  Get.toNamed(AppRoute.addProduct);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
