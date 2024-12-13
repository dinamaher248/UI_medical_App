import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:go_router/go_router.dart';

import 'package:ui_navigator_app/pages/CartScreen.dart';
import 'package:ui_navigator_app/pages/CategoryListingScreen.dart';
import 'package:ui_navigator_app/pages/HomeScrean.dart';
import 'package:ui_navigator_app/pages/NotificationScreen.dart';
import 'package:ui_navigator_app/pages/ProductDetailsScreen.dart';
import 'package:ui_navigator_app/pages/ProfileScreen.dart';
import 'package:ui_navigator_app/pages/SplashScreen.dart';

void main() {
  final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: '/category',
        builder: (context, state) => CategorylistingScreen(),
      ),
      GoRoute(
        path: '/product',
        builder: (context, state) => ProductDetailsScreen(),
      ),
      GoRoute(
        path: '/cart',
        builder: (context, state) => CartScreen(),
      ),
      GoRoute(
        path: '/notification',
        builder: (context, state) => NotificationScreen(),
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => ProfileScreen(),
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
