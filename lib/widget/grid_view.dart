import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/utils/assets_path.dart';
import 'package:test_task/widget/container/card.dart';

class ReelGrid extends StatelessWidget {
  const ReelGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(12.w),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 ta column
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.72, // height/width ratio
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return ProductCard(
          image: AssetsPath.headphone,
          title: "Headphone",
          price: "\$22.50",
        ); // sob same size
      },
    );
  }
}
