import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hyperhire_task/core/constants/image_constant.dart';
import 'package:hyperhire_task/core/constants/products_constants.dart';
import 'package:hyperhire_task/core/theme/app_colors.dart';
import 'widgets/homepage_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.only(left: 8.sp),
          child: Image.asset(IconConstant.logo),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 1,
              color: AppColors.grey.withOpacity(0.2),
            ),
            searchTextField(),
            const SizedBox(height: 14),
            bannerWidget(context, banners),
            const SizedBox(height: 14),
            productsListWidget(context),
            const SizedBox(height: 14),
            customDivider(),
            const SizedBox(height: 14),
            profilesWidget(),
            const SizedBox(height: 14),
            bottomInfoWidget()
          ],
        ),
      ),
    ));
  }
}
