import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/utils/assets_path.dart';

class AlertPassword extends StatelessWidget {
  const AlertPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(AssetsPath.alerts, height: 15.h.clamp(15, 16), width: 15.w.clamp(15, 16)),
        SizedBox(width: 4.w),
        Text(
          'At least 8 characters with a combination of letters\nand numbers',
          style: TextStyle(
            fontSize: 12.sp.clamp(11, 12),
            fontWeight: FontWeight.w400,
            color: Color(0xFF23AA26),
          ),
        ),
      ],
    );
  }
}
