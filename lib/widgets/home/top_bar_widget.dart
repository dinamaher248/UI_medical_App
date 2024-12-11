import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_navigator_app/const.dart';
import 'package:ui_navigator_app/main.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(4.w),
              bottomRight: Radius.circular(4.w)),
          color: Primary),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.w, top: 12.w),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('Images/photo_profile.jpg'),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {
                      context.push('/notification');
                    },
                    icon: Icon(
                      Icons.notification_add,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {
                      GoRouter.of(context).push('/cart');
                    },
                    icon: Icon(
                      Icons.inbox,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
          //welcome text
          Padding(
            padding: EdgeInsets.only(left: 8.w, top: 3.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi, Rahul',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.overpass(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    'Welcome to GDG Medical Store',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.overpass(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
