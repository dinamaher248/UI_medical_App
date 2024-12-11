import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ProfileInfoWidget extends StatelessWidget {
  ProfileInfoWidget({required this.content, required this.iconVar});
  String content;
  Icon iconVar;
  String? push;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Row(
        children: [
          Flexible(
            child: ListTile(
              leading: iconVar,
              title: Text(
                content,
                style: GoogleFonts.overpass(
                  fontSize: 15.sp,
                  color: Color(0XFF091C3F),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15.sp,
              color: const Color.fromARGB(255, 110, 109, 109),
            ),
          ),
        ],
      ),
    );
  }
}
