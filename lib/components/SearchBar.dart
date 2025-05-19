// Search bar component
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Container(
        padding:  EdgeInsets.symmetric(horizontal: 12.w),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: TextField(
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.right,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'ابحث عن المنتج .....',
            hintTextDirection: TextDirection.rtl,
            hintStyle: TextStyle(color: Colors.grey[500], fontSize: 14.sp),
            prefixIcon: const Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
