import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_navigator_app/const.dart';
import 'package:ui_navigator_app/widgets/bottombar.dart';
import 'package:ui_navigator_app/widgets/category_widget.dart';
import 'package:ui_navigator_app/widgets/home/top_bar_widget.dart';
import 'package:ui_navigator_app/widgets/top_category_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBarWidget(),
            //################################################
            SizedBox(height: 2.h),

            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 7.w,top: 5.w),
                  child: Text(
                    'Top Categories',
                    style: GoogleFonts.overpass(
                      color: Color(0XFF090F47),
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            
            SizedBox(
              height: 2.h,
            ),
            //####################################################
            Padding(
              padding:  EdgeInsets.only(left: 3.w,right: 3.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TopCategoryWidget(color: Colors.pink, name: 'Dental'),
                  SizedBox(
                    width: 2.w,
                  ),
                  TopCategoryWidget(color: Colors.green, name: 'Wellness'),
                  SizedBox(
                    width: 2.w,
                  ),
                  TopCategoryWidget(color: Colors.orange, name: 'Homeo'),
                  SizedBox(
                    width: 2.w,
                  ),
                  TopCategoryWidget(color: Colors.blue, name: 'Eye care'),
                ],
              ),
            ),
            SizedBox(
              height: 5.w,
            ),
            //###################################################
            Center(
              child: Container(
                  width: 86.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('Images/photo6.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.w,top: 20.w),
                      child: SizedBox(
                        width: 40.w,
                        child: Text(
                          'Save extra on every order',
                          style: GoogleFonts.overpass(
                            color: Color(0xFF1987FB),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  )),
            ),
            //############################################
            SizedBox(
              height: 3.h,
            ),
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 7.w),
                  child: Text(
                    'Deals of the Day',
                    style: GoogleFonts.overpass(
                      color: Color(0XFF090F47),
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding:  EdgeInsets.only(right: 7.w),
                  child: GestureDetector(
                    onTap: (){
                      context.push('/category');
                    },
                    child: Text(
                      'More',
                      style: GoogleFonts.overpass(
                        color: Color(0XFF006AFF),
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            
            SizedBox(
              height: 2.h,
            ),
            //###############################################
            GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 8,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 3.w,
                mainAxisSpacing: 3.h,
                childAspectRatio: 3 / 4,
              ),
              itemBuilder: (context, index) {
                return CategoryWidget(
                  text: 'Accu-check Active \nTest Strip',
                  photo: 'Images/product.jpg',
                  is_price: true,
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottombar(BuildContext, context),
    );
  }
}


//Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     CategoryWidget(
          //         text: 'Accu-check Active \nTest Strip',
          //         photo: 'Images/product.jpg',
          //         is_price: true),
          //     SizedBox(
          //       width: 3.w,
          //     ),
          //     CategoryWidget(
          //         text: 'Accu-check Active Test Strip',
          //         photo: 'Images/product.jpg',
          //         is_price: true),
          //   ],
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     CategoryWidget(
          //         text: 'Accu-check Active \nTest Strip',
          //         photo: 'Images/product.jpg',
          //         is_price: true),
          //     SizedBox(
          //       width: 3.w,
          //     ),
          //     CategoryWidget(
          //         text: 'Accu-check Active Test Strip',
          //         photo: 'Images/product.jpg',
          //         is_price: true),
          //   ],
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     CategoryWidget(
          //         text: 'Accu-check Active \nTest Strip',
          //         photo: 'Images/product.jpg',
          //         is_price: true),
          //     SizedBox(
          //       width: 3.w,
          //     ),
          //     CategoryWidget(
          //         text: 'Accu-check Active Test Strip',
          //         photo: 'Images/product.jpg',
          //         is_price: true),
          //   ],
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     CategoryWidget(
          //         text: 'Accu-check Active \nTest Strip',
          //         photo: 'Images/product.jpg',
          //         is_price: true),
          //     SizedBox(
          //       width: 3.w,
          //     ),
          //     CategoryWidget(
          //         text: 'Accu-check Active Test Strip',
          //         photo: 'Images/product.jpg',
          //         is_price: true),
          //   ],
          // ),