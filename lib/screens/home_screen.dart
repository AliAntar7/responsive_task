import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_task/components/AppHeader.dart';
import 'package:responsive_task/components/BottomNavigation.dart';
import 'package:responsive_task/components/BrandsSection.dart';
import 'package:responsive_task/components/PromoBanner.dart';
import 'package:responsive_task/components/RecentProductsSection.dart';
import 'package:responsive_task/components/SearchBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppHeader(),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [

                  // Search bar component
                  const Search(),

                  // Banner component
                  const PromoBanner(),

                  // Brands component
                  const BrandsSection(),

                  // Recently arrived products component
                  const RecentProductsSection(
                    imageUrl: 'assets/images/item.jpg',
                  ),
                  const RecentProductsSection(
                    imageUrl: 'assets/images/item1.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}







