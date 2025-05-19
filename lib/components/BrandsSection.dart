// Indicator dots for banner
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerIndicator extends StatelessWidget {
  const BannerIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
            (index) => Container(
          width: 8,
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == 0 ? Colors.green : Colors.grey[300],
          ),
        ),
      ),
    );
  }
}

// Brands section component
class BrandsSection extends StatelessWidget {
  const BrandsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Section header
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Text(
                'البراندات',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
                textDirection: TextDirection.rtl,
              ),
              Text(
                'عرض الكل',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey,
                ),
                textDirection: TextDirection.rtl,
              ),
            ],
          ),
        ),

        // Brands horizontal list
        SizedBox(
          height: 80.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            reverse: true, // For Arabic RTL layout
            padding:  EdgeInsets.symmetric(horizontal: 16.w),
            children: [
              _buildBrandItem('assets/images/almarai.jpg'),
              _buildBrandItem('assets/images/almarai.jpg'),
              _buildBrandItem('assets/images/almarai.jpg'),
              _buildBrandItem('assets/images/almarai.jpg'),
              _buildBrandItem('assets/images/almarai.jpg'),
              _buildBrandItem('assets/images/almarai.jpg'),
              _buildBrandItem('assets/images/almarai.jpg'),
            ],
          ),
        ),

        const BannerIndicator(),
      ],
    );
  }

  Widget _buildBrandItem(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 5.r,
              spreadRadius: 1.r,
            ),
          ],
        ),
        child: CircleAvatar(
          radius: 30.r,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(imageUrl),
        ),
      ),
    );
  }
}
