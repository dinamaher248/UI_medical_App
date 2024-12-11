import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class TopCategoryWidget extends StatelessWidget {
  TopCategoryWidget({required this.color, required this.name});
  String name;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.w,
      height: 18.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.w),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 6,
              offset: Offset(0, 3),
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 30,
          ),
          SizedBox(height: 1.h,),
          Text(
            name,
            style: GoogleFonts.overpass(
              fontSize: 16.sp,
              fontWeight: FontWeight.w300,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
