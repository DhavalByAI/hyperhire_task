import 'package:flutter/material.dart';
import 'package:hyperhire_task/core/theme/app_colors.dart';
import 'package:hyperhire_task/core/theme/font_manager.dart';
import 'package:hyperhire_task/modules/Home/widgets/homepage_widget.dart';
import 'package:hyperhire_task/modules/Profile/widget/profile_widgets.dart';
import 'package:hyperhire_task/widgets/app_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required this.heroTag});
  final int heroTag;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        backgroundColor: AppColors.white,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            cText('랭킹 1위',
                color: AppColors.grey,
                fontSize: MyFonts.size10,
                fontWeight: FontWeightManager.regular),
            cText('베스트 리뷰어',
                color: AppColors.black,
                fontSize: MyFonts.size16,
                fontWeight: FontWeightManager.medium)
          ],
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
            const SizedBox(height: 24),
            profileImageInfoWidget(heroTag),
            const SizedBox(height: 24),
            customDivider(),
            const SizedBox(height: 12),
            productReviewWidget(context)
          ],
        ),
      ),
    ));
  }
}
