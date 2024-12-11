import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_navigator_app/main.dart';
import 'package:ui_navigator_app/widgets/bottombar.dart';
import 'package:ui_navigator_app/widgets/notify_widget.dart';

class Notificationn extends StatelessWidget {
  const Notificationn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5.w, top: 15.w),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_circle_left_outlined),
                  onPressed: () {
                    context.pop();
                  },
                ),
                Text(
                  'Notification',
                  style: GoogleFonts.overpass(
                    color: const Color(0XFF090F47),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                Text(
                  'Clear all',
                  style: GoogleFonts.overpass(
                    color: const Color(0XFF1987FB),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 6.w,
                )
              ],
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          NotifyWidget(
            Content:
                'We know that — for children AND adults — learning is most effective when it is',
            subcontent: 'Aug 12, 2020 at 12:08 PM',
            iconVar: Icon(Icons.bookmark),
            notRead: true,
          ),
          SizedBox(
            height: 2.h,
          ),
          NotifyWidget(
            Content:
                'The future of professional learning is immersive, communal experiences for ',
            subcontent: 'Aug 12, 2020 at 12:08 PM',
            iconVar: Icon(Icons.calendar_month),
            notRead: false,
          ),
          SizedBox(
            height: 2.h,
          ),
          NotifyWidget(
            Content:
                'With this in mind, Global Online Academy created the Blended Learning Design ',
            subcontent: 'Aug 12, 2020 at 12:08 PM',
            iconVar: Icon(Icons.notifications),
            notRead: false,
          ),
          SizedBox(
            height: 2.h,
          ),
          NotifyWidget(
            Content:
                'Technology should serve, not drive, pedagogy. Schools often discuss ',
            subcontent: 'Aug 12, 2020 at 12:08 PM',
            iconVar: Icon(Icons.notifications),
            notRead: false,
          ),
          SizedBox(
            height: 2.h,
          ),
          NotifyWidget(
            Content:
                'Peer learning works. By building robust personal learning communities both',
            subcontent: 'Aug 12, 2020 at 12:08 PM',
            iconVar: Icon(Icons.notifications),
            notRead: false,
          ),
          SizedBox(
            height: 2.h,
          ),
        ],
      ),
      bottomNavigationBar: bottombar(BuildContext, context),
    );
  }
}
