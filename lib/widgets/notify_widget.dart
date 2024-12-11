import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class NotifyWidget extends StatelessWidget {
  NotifyWidget(
      {required this.Content, required this.subcontent, required this.iconVar,this.notRead});
  String Content;
  String subcontent;
  bool? notRead;

  Icon iconVar;

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
                Content,
                style: GoogleFonts.inter(
                  fontSize: 15.sp,
                  color: Color(0XFF091C3F),
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: Text(
                subcontent,
                style: GoogleFonts.inter(
                  fontSize: 15.5.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: notRead == true
                  ? Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        color: Colors.red, 
                        shape: BoxShape.circle,
                      ),
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
