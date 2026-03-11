import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profile',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24.sp,
                color: Colors.black,
              ),
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
            SizedBox(height: 12.h,),
            Center(
              child: Text('Wade Warren',style: TextStyle(
                fontSize: 18.sp,fontWeight: FontWeight.w500,color: Colors.black
              ),),
            ),
            SizedBox(height: 10.h,),
          ],
        ),
      ),
    );
  }
}
