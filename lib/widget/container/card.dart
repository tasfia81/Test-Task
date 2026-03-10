// import 'package:flutter/cupertino.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:test_task/utils/assets_path.dart';
//
// class Card extends StatefulWidget {
//   const Card({super.key});
//
//   @override
//   State<Card> createState() => _CardState();
// }
//
// class _CardState extends State<Card> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200.h,
//       width: 157.w,
//       decoration: BoxDecoration(
//         color: Color(0xFFF6F6F6),
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Column(
//         children: [
//           Image.asset(AssetsPath.headphone, height: 100.h, width: 157.w),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;

  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: 157.w,
      decoration: BoxDecoration(
        color: Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Stack(
        children: [

          /// MAIN CONTENT
          Column(
            children: [

              /// IMAGE PART
              Container(
                height: 100.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(12.r),
                  ),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [

                    /// CATEGORY
                    Positioned(
                      top: 8,
                      left: 8,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 4.h),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100.r),
                        ),
                        child: Text(
                          "ELECTRONICS",
                          style: TextStyle(
                            fontSize: 10.sp,
                            color:  Color(0xFF7172CC),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// BOTTOM PART
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 8.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(height: 10.h),

                      /// TITLE
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      SizedBox(height: 4.h),

                      /// STOCK
                      Row(
                        children: [
                          Icon(Icons.check,
                              color:  Color(0xFF52D238), size: 14.sp),
                          SizedBox(width: 3.w),
                          Text(
                            "In Stock",
                            style: TextStyle(
                              color:  Color(0xFF52D238),
                              fontSize: 11.sp,
                            ),
                          ),
                        ],
                      ),

                      // Spacer(),
                     // SizedBox(width: 8.w),

                      /// BUTTONS
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding:
                              EdgeInsets.symmetric(vertical: 6.h),
                              decoration: BoxDecoration(
                                color: const Color(0xFFEDEEF4),
                                borderRadius:
                                BorderRadius.circular(100.r),
                              ),
                              child: Center(
                                child: Text(
                                  "View Details",
                                  style: TextStyle(
                                    color: const Color(0xFF1B6EF7),
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 6.w),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 6.h),
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(100.r),
                              border: Border.all(
                                  color: const Color(0xFFE3E3E9)),
                            ),
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                fontSize: 9.sp,
                                color: const Color(0xFF7F7F8A),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),

          /// PRICE (OVERLAP)
          Positioned(
            top: 80.h,
            right: 10.w,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 10.w, vertical: 6.h),
              decoration: BoxDecoration(
                color:  Color(0xFF1B6EF7),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Text(
                price,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
