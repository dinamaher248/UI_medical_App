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
        SizedBox(
          width: 8.w,
        ),
        IconButton(
          icon: Stack(
            clipBehavior: Clip.none,
            children: [
              const Icon(
                Icons.notifications,
                color: Colors.grey,
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  width: 10.0,
                  height: 10.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          onPressed: () {
            GoRouter.of(context).push('/notification');
          },
        ),
        Spacer(),
        IconButton(
          icon: const Icon(Icons.inbox, color: Colors.grey),
          onPressed: () {
            GoRouter.of(context).push('/product');
          },
        ),
        SizedBox(
          width: 8.w,
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
