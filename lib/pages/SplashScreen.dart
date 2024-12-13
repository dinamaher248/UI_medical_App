import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_navigator_app/const.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      context.go('/home'); 
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Primary,
      body: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              'Images/logo.svg',
              fit: BoxFit.cover, 
              colorFilter: const ColorFilter.mode(
                Colors.black, 
                BlendMode.srcIn,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: EdgeInsets.all(20),
                    backgroundColor: Colors.white,
                  ),
                  child: Icon(
                    Icons.add_circle,
                    color: Primary,
                    size: 30,
                  ),
                ),
                SizedBox(height: 3.h), 
                Text(
                  'GDG Medical',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.overpass(
                    color: Colors.white,
                    fontSize: 20.sp, 
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
