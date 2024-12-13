import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_navigator_app/main.dart';
import 'package:ui_navigator_app/widgets/category_widget.dart';

class Categorylisting extends StatelessWidget {
  const Categorylisting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Diabetes Care'),
          leading: IconButton(
            icon: Icon(Icons.arrow_circle_left_outlined), // Set the icon here
            onPressed: () {
              context.pop();
            },
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: Text(
                        'Categories',
                        style: GoogleFonts.overpass(
                          color: Colors.black,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Row(
                    children: [
                      Expanded(
                        child: CategoryWidget(
                          text: 'Sugar Substitute',
                          photo: 'Images/photo1.jpg',
                          is_price: false,
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Expanded(
                        child: CategoryWidget(
                          text: 'Juices & Vinegars',
                          photo: 'Images/photo2.jpg',
                          is_price: false,
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Expanded(
                        child: CategoryWidget(
                          text: 'Vitamins Medicines',
                          photo: 'Images/photo3.jpg',
                          is_price: false,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.w, horizontal: 5.w),
                      child: Text(
                        'All Products',
                        style: GoogleFonts.overpass(
                          color: Colors.black,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Row(
                    children: [
                      Expanded(
                        child: CategoryWidget(
                          text: 'Accu-check Active Test Strip',
                          photo: 'Images/photo4.jpg',
                          is_price: true,
                        ),
                      ),
                      Expanded(
                        child: CategoryWidget(
                          text: 'Omron HEM-8712 BP Monitor',
                          photo: 'Images/photo5.jpg',
                          is_price: true,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Row(
                    children: [
                      Expanded(
                        child: CategoryWidget(
                          text: 'Accu-check Active Test Strip',
                          photo: 'Images/photo4.jpg',
                          is_price: true,
                        ),
                      ),
                      Expanded(
                        child: CategoryWidget(
                          text: 'Omron HEM-8712 BP Monitor',
                          photo: 'Images/photo5.jpg',
                          is_price: true,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Row(
                    children: [
                      Expanded(
                        child: CategoryWidget(
                          text: 'Accu-check Active Test Strip',
                          photo: 'Images/photo4.jpg',
                          is_price: true,
                        ),
                      ),
                      Expanded(
                        child: CategoryWidget(
                          text: 'Omron HEM-8712 BP Monitor',
                          photo: 'Images/photo5.jpg',
                          is_price: true,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
              ],
            ),
          ),
        ));
  }
}
