import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBackButton extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  final VoidCallback? onTap;

  const CustomBackButton({
    super.key,
    this.backgroundColor = Colors.white,
    this.iconColor = Colors.black,
    this.size = 40,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => Get.back(),
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
          border: Border.all(color: Color(0xFFE2E8F0),width: 1),
        ),
        child: Icon(
          Icons.arrow_back_ios_new,
          size: size * 0.45,
          color: iconColor,
        ),
      ),
    );
  }
}