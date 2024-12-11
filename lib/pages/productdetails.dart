import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_navigator_app/main.dart';

class Productdetails extends StatelessWidget {
  const Productdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 2.w, top: 12.w),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_circle_left_outlined),
                    onPressed: () {
                      context.pop();
                    },
                  ),
                 
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.w, top: 8.w),
              child: Row(
                children: [
                  Text(
                    'Sugar Free Gold Low Calories',
                    style: GoogleFonts.overpass(
                      color: Color(0XFF090F47),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.w, top: 2.w),
              child: Row(
                children: [
                  Text(
                    'Etiam mollis metus non purus ',
                    style: GoogleFonts.overpass(
                      color: Color(0XFF9093AC),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              width: 86.w,
              height: 30.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Images/photo7.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            SizedBox(height: 1.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 1.2.w,
                  backgroundColor: const Color(0xFF4157FF),
                ),
                SizedBox(
                  width: 3.w,
                ),
                CircleAvatar(
                  radius: 1.2.w,
                  backgroundColor: Colors.grey,
                ),
                SizedBox(width: 3.w),
                CircleAvatar(
                  radius: 1.2.w,
                  backgroundColor: Colors.grey,
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8.w),
                          child: Text(
                            'Rs.99',
                            style: GoogleFonts.overpass(
                              color: Color(0XFF9093AC),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2.w),
                          child: Text(
                            'Rs.56',
                            style: GoogleFonts.overpass(
                              color: Color(0XFF090F47),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4.w,
                      ),
                      child: Text(
                        'Etiam mollis ',
                        style: GoogleFonts.overpass(
                          color: Color(0XFF9093AC),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  'Add to cart',
                  style: GoogleFonts.overpass(
                    color: Color(0XFF006AFF),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: 3.h),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8.w),
              child: Divider(
                thickness: 1,
                color: Color(0XFFE6E6E6),
                indent: 0,
                endIndent: 0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product Details',
                    style: GoogleFonts.overpass(
                      color: Color(0XFF090F47),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 310,
                    child: Text(
                      'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit. ',
                      style: GoogleFonts.overpass(
                        color: Color(0XFF9093AC),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Expiry Date',
                        style: GoogleFonts.overpass(
                          color: Color(0XFF090F47),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Text(
                        '25/12/2023',
                        style: GoogleFonts.overpass(
                          color: Color(0XFF9093AC),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Brand Name',
                        style: GoogleFonts.overpass(
                          color: Color(0XFF090F47),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Text(
                        'Something',
                        style: GoogleFonts.overpass(
                          color: Color(0XFF9093AC),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 11.w, vertical: 4.h),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF4157FF),
                          minimumSize: Size(80.w, 6.h)),
                      onPressed: () {
                    GoRouter.of(context).push('/cart');
                  },
                      child: Text(
                        'Go to Cart',
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 16.8.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
