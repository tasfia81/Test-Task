import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/core/app_route.dart';
import 'package:test_task/utils/assets_path.dart';
import 'package:test_task/widget/custom_primary_button.dart';
import 'package:test_task/widget/grid_view.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFF1B6EF7),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10.w),
                child: Row(
                  children: [
                    Image.asset(
                      AssetsPath.profilePic,
                      height: 44.h,
                      width: 44.w,
                    ),
                    SizedBox(width: 8.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Wade Warren!',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              AssetsPath.vector,
                              height: 20.h,
                              width: 20.w,
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              'Golder Avenue, Abuja',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          
              SizedBox(height: 15.h),
          
              Container(
                height: 867.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Services',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: Colors.black,
                        ),
                      ),
          
                      SizedBox(height: 10.h),
                      /// TAB VIEW
                      Expanded(
                        child: TabBarView(
                          children: [
                            ReelGrid(),
                            ReelGrid(),
                            ReelGrid(),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.h,),
                      CustomPrimaryButton(text: 'Create Product', onTap: (){
                        Get.toNamed(AppRoute.productDetails);
                      })
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}