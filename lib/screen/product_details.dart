// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:test_task/utils/assets_path.dart';
//
// class ProductDetails extends StatefulWidget {
//   const ProductDetails({super.key});
//
//   @override
//   State<ProductDetails> createState() => _ProductDetailsState();
// }
//
// class _ProductDetailsState extends State<ProductDetails> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: EdgeInsets.all(16.w),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 BackButton(),
//                 Center(
//                   child: Text(
//                     '                Service Detail',
//                     style: TextStyle(
//                       fontSize: 20.sp,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//
//                 /// IMAGE PART
//                 Container(
//                   height: 200.h,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.vertical(
//                       top: Radius.circular(12.r),
//                     ),
//                     image: DecorationImage(
//                       image: AssetImage(AssetsPath.headphone),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   child: Stack(
//                     children: [
//
//                       /// CATEGORY
//                       Positioned(
//                         top: 8,
//                         left: 8,
//                         child: Container(
//                           padding: EdgeInsets.symmetric(
//                               horizontal: 8.w, vertical: 4.h),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(100.r),
//                           ),
//                           child: Text(
//                             "ELECTRONICS",
//                             style: TextStyle(
//                               fontSize: 10.sp,
//                               color:  Color(0xFF7172CC),
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/utils/assets_path.dart';
import 'package:test_task/widget/custom_primary_button.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F5F5),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text(
          "Service Detail",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// IMAGE CARD
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Image.asset(
                    AssetsPath.headphone,
                    height: 200.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                /// CATEGORY
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 5.h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Text(
                      "ELECTRONICS",
                      style: TextStyle(
                        color: const Color(0xFF7172CC),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 16.h),

            /// TITLE + PRICE
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Headphone",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Text(
                  "\$22.50",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),

            SizedBox(height: 6.h),

            /// STOCK
            Row(
              children: [
                Icon(Icons.check, color: Colors.green, size: 16.sp),
                SizedBox(width: 4.w),
                Text(
                  "In Stock",
                  style: TextStyle(color: Colors.green, fontSize: 14.sp),
                ),
              ],
            ),

            SizedBox(height: 16.h),

            /// DASHED LINE
            Divider(color: Colors.grey.shade300, thickness: 1),

            SizedBox(height: 16.h),

            /// ABOUT TITLE
            Text(
              "About Us",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
            ),

            SizedBox(height: 8.h),

            /// DESCRIPTION
            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 14.sp,
                  height: 1.5,
                ),
                children: [
                  const TextSpan(
                    text:
                        "PipeMaster Plumbing is not just a service; it's a commitment to providing reliable and efficient plumbing solutions, ensuring your home or business runs smoothly..... ",
                  ),
                  TextSpan(
                    text: "Read More",
                    style: TextStyle(
                      color: const Color(0xFF5B5BD6),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            CustomPrimaryButton(text: 'Edit Product', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
