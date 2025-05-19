// Recent products section component
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecentProductsSection extends StatelessWidget {
  final String imageUrl;
  const RecentProductsSection({Key? key,
    required this.imageUrl,
  }) : super(key: key);

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
                'وصل حديثاً',
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

        // Products grid
        SizedBox(
          height: 220.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            reverse: true, // For Arabic RTL layout
            padding:  EdgeInsets.symmetric(horizontal: 16.w),
            children: [
              _buildProductItem(
                'المراعي حليب طازج كامل الدسم عبوة عائلة',
                '223.40',
                '223.40',
                imageUrl,
                hasDiscount: false,
              ),
              _buildProductItem(
                'المراعي حليب طازج كامل الدسم',
                '223.40',
                '223.40',
                imageUrl,
                hasDiscount: true,
                discountPercent: '25%',
              ),
              _buildProductItem(
                'خبز توست أبيض',
                '223.40',
                '223.40',
                imageUrl,
                hasDiscount: false,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildProductItem(
      String name,
      String price,
      String originalPrice,
      String imageUrl, {
        required bool hasDiscount,
        String discountPercent = '',
      }) {
    return Container(
      width: 140.w,
      margin:  EdgeInsets.symmetric(horizontal: 8.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Product image
          Stack(
            children: [
              Container(
                height: 120.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              // Favorite button
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.favorite_border,
                    size: 16,
                  ),
                ),
              ),
              if (hasDiscount)
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      'خصم $discountPercent',
                      style:  TextStyle(
                        color: Colors.white,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
            ],
          ),

          // Product name
          Padding(
            padding:  EdgeInsets.only(top: 8.w, bottom: 4.w),
            child: Text(
              name,
              style:  TextStyle(
                fontSize: 12.sp,
                height: 1.2.h,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
            ),
          ),

          // Price
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Text(
                '$price',
                style:  TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(width: 4),
              if (hasDiscount)
                Text(
                  '$originalPrice',
                  style:  TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                  textDirection: TextDirection.rtl,
                ),
            ],
          ),

          // Add to cart row
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Container(
                width: 24.w,
                height: 24.h,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
              Container(
                padding:  EdgeInsets.symmetric(horizontal: 8.w),
                child:  Text(
                  '1',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: 24.w,
                height: 24.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.r),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: const Center(
                  child: Icon(
                    Icons.remove,
                    color: Colors.grey,
                    size: 16,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                width: 24.w,
                height: 24.h,
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  shape: BoxShape.circle,
                ),
                child:  Center(
                  child: Text(
                    '1',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                    ),
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
