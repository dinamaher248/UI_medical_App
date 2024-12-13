//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_navigator_app/widgets/bottombar.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 70.w,
              height: 50.h,
              child: Image(
                image: AssetImage('Images/cart.jpg'),
              ),
            ),
          ),
          Text(
            'Whoops',
            style: GoogleFonts.overpass(
              color: Color(0XFF090F47),
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            'Your cart is empty!',
            style: GoogleFonts.overpass(
              color: Color(0XFF9099A8),
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottombar(BuildContext, context),
    );
  }
}
