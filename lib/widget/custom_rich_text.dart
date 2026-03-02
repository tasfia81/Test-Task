import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRichText extends StatelessWidget {
  final String normalText;
  final String highlightedText;
  final VoidCallback? onTap;
  final Color? normalColor;
  final Color? highlightedColor;
  final double? fontSize;

  const CustomRichText({
    super.key,
    required this.normalText,
    required this.highlightedText,
    this.onTap,
    this.normalColor,
    this.highlightedColor,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          fontSize: fontSize ?? 14.sp,
          color: normalColor ?? Color(0xFF64748B),
          fontWeight: FontWeight.w400,
        ),
        children: [
          TextSpan(text: normalText),
          WidgetSpan(
            child: GestureDetector(
              onTap: onTap,
              child: Text(
                highlightedText,
                style: TextStyle(
                  color: highlightedColor ?? const Color(0xFF1B6EF7),
                  fontWeight: FontWeight.w600,
                  fontSize: fontSize ?? 14.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}