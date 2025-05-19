// Promotional banner component
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Container(
        height: 120.h,
        child: CarouselSlider(
          options: CarouselOptions(
            height: 205.0.h,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
          items: [
'assets/images/bnr.png',
            'assets/images/bnr.png',
            'assets/images/bnr.png',
          ].map((item) {
            return Container(
              width: double.infinity,
              margin:  EdgeInsets.symmetric(horizontal: 5.0.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                image: DecorationImage(
                  image: AssetImage(item),
                  fit: BoxFit.fill,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
