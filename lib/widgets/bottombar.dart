import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:go_router/go_router.dart';

Widget bottombar(BuildContext, context) {
  return BottomAppBar(
    shape: const CircularNotchedRectangle(),
    notchMargin: 5.w,
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.home, color: Color(0xFF4157FF)),
          onPressed: () {
            GoRouter.of(context).push('/home');
          },
        ),
        IconButton(
          icon: const Icon(Icons.notification_add, color: Colors.grey),
          onPressed: () {
            GoRouter.of(context).push('/notification');
          },
        ),
        IconButton(
          icon: const Icon(Icons.inbox, color: Colors.grey),
          onPressed: () {
            GoRouter.of(context).push('/cart');
          },
        ),
        IconButton(
          icon: const Icon(Icons.person_outline, color: Colors.grey),
          onPressed: () {
            GoRouter.of(context).push('/profile');
          },
        ),
      ],
    ),
  );
}
