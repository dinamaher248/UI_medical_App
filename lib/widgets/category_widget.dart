import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget(
      {required this.text, required this.photo, required this.is_price});
  String photo, text;
  bool is_price;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(photo),
          width: 40.w,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding:  EdgeInsets.only(left: 2.w),
            child: Text(
              text,
              style: GoogleFonts.overpass(
                color: Colors.black,
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        SizedBox(height: 1.h),
        if (is_price)
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding:  EdgeInsets.only(left: 2.w),
              child: Text(
                'Rs.112',
                style: GoogleFonts.overpass(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
