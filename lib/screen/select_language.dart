import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/core/app_route.dart';
import 'package:test_task/model/language_model.dart';
import 'package:test_task/utils/assets_path.dart';
import 'package:test_task/widget/custom_back_button.dart';
import 'package:test_task/widget/custom_language_card.dart';
import 'package:test_task/widget/custom_primary_button.dart';
import 'package:get/get.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({super.key});

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  int selectedIndex = 0;
  final List<LanguageModel> languages = [
    LanguageModel(name: "English (US)", flagPath: AssetsPath.us),
    LanguageModel(name: "Indonesia", flagPath: AssetsPath.id),
    LanguageModel(name: "Afghanistan", flagPath: AssetsPath.af),
    LanguageModel(name: "Algeria", flagPath: AssetsPath.alg),
    LanguageModel(name: "Malaysia", flagPath: AssetsPath.my),
    LanguageModel(name: "Arabic", flagPath: AssetsPath.ar),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomBackButton(),
            SizedBox(height: 15.h),
            Text(
              'What is Your Mother Language',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20.sp,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'Discover what is a podcast description and\npodcast summary.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: Color(0xFF636F85),
              ),
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(16.w),
                itemCount: languages.length,
                itemBuilder: (context, index) {
                  return LanguageCard(
                    title: languages[index].name,
                    flagPath: languages[index].flagPath,
                    isSelected: selectedIndex == index,
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 5.h),
            CustomPrimaryButton(
              text: 'Continue',
              onTap: () {
                Get.toNamed(AppRoute.setUpProfile);
              },
            ),
          ],
        ),
      ),
    );
  }
}
