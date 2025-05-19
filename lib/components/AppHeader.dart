// Header component with location and cart/notification icons
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Row(
        textDirection: TextDirection.rtl, // For Arabic RTL layout
        children: [
          // Logo
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Image.asset(
              'assets/images/logo.jpg',
              width: 50.w,
              height: 50.h,
            ),
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
               Text(
                'التوصيل إلى',
                style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                textDirection: TextDirection.rtl,
              ),
              Row(
                textDirection: TextDirection.rtl,
                children:  [
                  Text(
                    'المنزل',
                    style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ],
          ),
          const Spacer(),
          // Notification icon with badge
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications_outlined),
                onPressed: () {},
              ),
            ],
          ),
          // Cart icon with badge
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart_outlined),
                onPressed: () {},
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  constraints:  BoxConstraints(
                    minWidth: 16.w,
                    minHeight: 16.h,
                  ),
                  child:  Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}