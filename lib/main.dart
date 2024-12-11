import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:go_router/go_router.dart';

import 'package:ui_navigator_app/pages/cart.dart';
import 'package:ui_navigator_app/pages/categorylisting.dart';
import 'package:ui_navigator_app/pages/home.dart';
import 'package:ui_navigator_app/pages/notification.dart';
import 'package:ui_navigator_app/pages/productdetails.dart';
import 'package:ui_navigator_app/pages/profile.dart';
import 'package:ui_navigator_app/pages/splash.dart';

void main() {
  final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => Splash(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => Home(),
      ),
      GoRoute(
        path: '/category',
        builder: (context, state) => Categorylisting(),
      ),
      GoRoute(
        path: '/product',
        builder: (context, state) => Productdetails(),
      ),
      GoRoute(
        path: '/cart',
        builder: (context, state) => Cart(),
      ),
      GoRoute(
        path: '/notification',
        builder: (context, state) => Notificationn(),
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => Profile(),
      ),
    ],
  );

  runApp(MyApp(router: router));
}

class MyApp extends StatelessWidget {
  final GoRouter router;

  const MyApp({Key? key, required this.router}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: router,
           
        );
      },
    );
  }
}







// void main() {
//   runApp(Sizer(
//     builder: (context, orientation, deviceType) {
//       return MaterialApp(
//           debugShowCheckedModeBanner: false,
//           initialRoute: '/profile',
//           routes: {
//             '/': (context) => Splash(),
//             '/home': (context) => Home(),
//             '/category': (context) => Categorylisting(),
//             '/product': (context) => Productdetails(),
//             '/cart': (context) => Cart(),
//             '/notification': (context) => Notificationn(),
//             '/profile': (context) => Profile(),
//           });
//     },
//   ));
// }