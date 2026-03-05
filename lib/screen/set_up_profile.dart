import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_task/controller/label_showDialog_controller.dart';
import 'package:test_task/widget/container/about_us.dart';
import 'package:test_task/widget/custom_back_button.dart';
import 'package:test_task/widget/custom_primary_button.dart';
import 'package:get/get.dart';

class SetUpProfile extends StatefulWidget {
  const SetUpProfile({super.key});

  @override
  State<SetUpProfile> createState() => _SetUpProfileState();
}

class _SetUpProfileState extends State<SetUpProfile> {
  final dialogController = Get.put(LabelShowDialogController());
  final ImagePicker picker = ImagePicker();
  File? image;

  Future pickImageFromGallery() async {
    final XFile? pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      setState(() {
        image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomBackButton(),
                  SizedBox(width: 20.sp),
                  Text(
                    '            Set Up Profile',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Center(
                child: GestureDetector(
                  onTap: pickImageFromGallery,
                  child: CircleAvatar(
                    radius: 60.r,
                    backgroundColor: Color(0xFFCDCED2),
                    backgroundImage: image != null ? FileImage(image!) : null,
                    child: image == null
                        ? Icon(Icons.camera_alt, size: 30.sp, color: Colors.grey)
                        : null,
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              Center(
                child: Text(
                  'Upload profile picture',style: TextStyle(
                  fontWeight: FontWeight.w400,fontSize: 16.sp,color: Color(0xFF00214F)
                ),),
              ),
              SizedBox(height: 20.h,),
              AboutUs(),
              SizedBox(height: 15.h,),
              CustomPrimaryButton(text: 'Next', onTap: (){
                dialogController.showSuccessDialog();
              }),
            ],
          ),
        ),
      ),
    );
  }
}
