import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StepLineIndicator extends StatelessWidget {
  final int totalSteps;
  final int currentStep;

  StepLineIndicator({required this.totalSteps, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            // Steps
            ...List.generate(totalSteps, (index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                height: 3.h.clamp(2, 4),
                width: 50.w.clamp(40, 50),
                decoration: BoxDecoration(
                  color: index < currentStep
                      ? Color(0xFF1B6EF7) // active
                      : Color(0xFFF1F5F9), // inactive
                  borderRadius: BorderRadius.circular(2.r),
                ),
              );
            }),
          ],
        ),
        SizedBox(width: 8.h), // gap before text
        Text(
          "Strong",
          style: TextStyle(
            fontSize: 12.sp.clamp(12, 13),
            fontWeight: FontWeight.w600,
            color: Color(0xFF1B6EF7),
          ),
        ),
      ],
    );
  }
}
