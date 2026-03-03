import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/widget/custom_primary_button.dart';

class EnableLocation extends StatefulWidget {
  const EnableLocation({super.key});

  @override
  State<EnableLocation> createState() => _EnableLocationState();
}

class _EnableLocationState extends State<EnableLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Text(
            'Enable Location',
            style: TextStyle(
              fontSize: 20.sp.clamp(19, 20),
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            'Kindly allow us to access your location to\nprovide you with suggestions for nearby\nsalons',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp.clamp(13, 14),
              color: Color(0xFF636F85),
            ),
          ),
          SizedBox(height: 10.h,),
          CustomPrimaryButton(text: 'Enable', onTap: (){})
        ],
      ),
    );
  }
}
