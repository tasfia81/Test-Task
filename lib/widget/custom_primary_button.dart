import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double height;
  final double width;
  final double borderRadius;
  final Color backgroundColor;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? borderColor;
  //final double borderWidth;
  const CustomPrimaryButton({
    super.key, required this.text,
    required this.onTap,
    this.height = 56,
    this.width = double.maxFinite,
    this.borderRadius = 100,
    this.backgroundColor = const Color(0xFF1B6EF7),
    this.textColor = Colors.white,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w600,
    this.borderColor,
   // this.borderWidth = 1,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),
            // border: Border.all(
            //     color: Color(0xFF139F25)
            // )
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: textColor
          ),
        ),
      ),
    );
  }
}
