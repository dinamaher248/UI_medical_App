import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_navigator_app/widgets/bottombar.dart';
import 'package:ui_navigator_app/widgets/profile_info_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5.w, top: 20.w),
            child: Row(children: [
              Text(
                'My Profile',
                style: GoogleFonts.overpass(
                  color: const Color(0XFF090F47),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 7.w),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle, 
                          border: Border.all(
                            color: Colors.blue,
                            width: 3, 
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage('Images/photo_profile.jpg'),
                        ),
                      )),
                ],
              ),
              SizedBox(
                width: 3.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi, Rahul kanjariya',
                    style: GoogleFonts.overpass(
                      fontSize: 17.sp,
                      color: Color(0XFF737A86),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Welcome to  GDG Medical Store',
                    style: GoogleFonts.overpass(
                      fontSize: 14.sp,
                      color: Color(0XFF737A86),
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          ProfileInfoWidget(
            content: 'Edit Profile',
            iconVar: Icon(Icons.edit_note),
          ),
          SizedBox(
            height: 2.h,
          ),
          ProfileInfoWidget(
            content: 'My orders',
            iconVar: Icon(Icons.notes),
          ),
          SizedBox(
            height: 2.h,
          ),
          ProfileInfoWidget(
            content: 'Billing',
            iconVar: Icon(Icons.timer),
          ),
          SizedBox(
            height: 2.h,
          ),
          ProfileInfoWidget(
            content: 'Faq',
            iconVar: Icon(Icons.question_mark_rounded),
          ),
        ],
      ),
      bottomNavigationBar: bottombar(BuildContext, context),
    );
  }
}
