import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Text(
            'Profile',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 24.sp,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
