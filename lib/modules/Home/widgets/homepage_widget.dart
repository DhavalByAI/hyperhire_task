import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:hyperhire_task/core/constants/image_constant.dart';
import 'package:hyperhire_task/core/constants/products_constants.dart';
import 'package:hyperhire_task/core/theme/app_colors.dart';
import 'package:hyperhire_task/core/theme/font_manager.dart';
import 'package:hyperhire_task/modules/Profile/profile_screen.dart';
import 'package:hyperhire_task/widgets/app_text.dart';

import 'product_widget.dart';

Widget searchTextField() {
  return Container(
    height: 40,
    margin: const EdgeInsets.all(12),
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        border: GradientBoxBorder(
          gradient:
              LinearGradient(colors: [AppColors.secondary, AppColors.primary]),
          width: 2,
        )),
    child: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: TextField(
            decoration: InputDecoration(
                disabledBorder: InputBorder.none,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: '검색어를 입력하세요'),
          )),
          Icon(
            Icons.search,
            size: 30,
            color: AppColors.primary,
          )
        ],
      ),
    ),
  );
}

Widget bannerWidget(BuildContext context, List<String> banners) {
  int currIndex = 0;
  return StatefulBuilder(
    builder: (context, setState) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider(
                options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        currIndex = index;
                      });
                    },
                    autoPlay: true,
                    autoPlayCurve: Curves.easeInOut,
                    viewportFraction: 1,
                    padEnds: false),
                items: List.generate(
                  banners.length,
                  (index) => SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      banners[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: DotsIndicator(
                  dotsCount: banners.length,
                  position: currIndex,
                  decorator: DotsDecorator(
                    size: const Size.square(4.5),
                    activeSize: const Size(12, 4.5),
                    spacing: const EdgeInsets.all(2),
                    activeColor: AppColors.white,
                    color: AppColors.white.withOpacity(0.5),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

Padding productsListWidget(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  cText('제일 핫한 리뷰를 만나보세요',
                      color: AppColors.grey,
                      fontSize: MyFonts.size14,
                      fontWeight: FontWeightManager.regular),
                  cText('리뷰️  랭킹⭐ top 3',
                      color: AppColors.black,
                      fontSize: MyFonts.size18,
                      fontWeight: FontWeightManager.medium)
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios_rounded)
          ],
        ),
        const SizedBox(height: 14),
        Column(
          children: List.generate(
              products.length, (index) => productWidget(context, index)),
        )
      ],
    ),
  );
}

Padding profilesWidget() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            cText('골드 계급 사용자들이예요',
                color: AppColors.grey,
                fontSize: MyFonts.size14,
                fontWeight: FontWeightManager.regular),
            cText('베스트 리뷰어 🏆 Top10',
                color: AppColors.black,
                fontSize: MyFonts.size18,
                fontWeight: FontWeightManager.medium)
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 100,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileScreen(heroTag: index)));
                },
                child: Hero(
                  tag: index,
                  child: Column(
                    children: [
                      Expanded(
                        child: SizedBox(
                          child: index == 0
                              ? Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: CircleAvatar(
                                        radius: 30,
                                        backgroundColor: AppColors.starColor,
                                        child: CircleAvatar(
                                            radius: 26,
                                            backgroundImage: AssetImage(
                                                ImageConstant.profile)),
                                      ),
                                    ),
                                    Image.asset(ImageConstant.rank),
                                  ],
                                )
                              : CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage(ImageConstant.profile)),
                        ),
                      ),
                      cText('Name${index + 1}',
                          color: AppColors.grey,
                          fontSize: MyFonts.size14,
                          fontWeight: FontWeightManager.regular),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 12),
          ),
        )
      ],
    ),
  );
}

Widget bottomInfoWidget() {
  return Container(
    color: AppColors.grey.withOpacity(0.2),
    child: Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          cText('LOGO Inc.',
              color: AppColors.grey,
              fontSize: MyFonts.size14,
              fontWeight: FontWeightManager.medium),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              cText('회사 소개',
                  color: AppColors.grey,
                  fontSize: MyFonts.size12,
                  fontWeight: FontWeightManager.regular),
              Container(
                height: 14,
                width: 1,
                color: AppColors.grey..withOpacity(0.5),
              ),
              cText('인재 채용',
                  color: AppColors.grey,
                  fontSize: MyFonts.size12,
                  fontWeight: FontWeightManager.regular),
              Container(
                height: 14,
                width: 1,
                color: AppColors.grey..withOpacity(0.5),
              ),
              cText('인재 채용',
                  color: AppColors.grey,
                  fontSize: MyFonts.size12,
                  fontWeight: FontWeightManager.regular),
              Container(
                height: 14,
                width: 1,
                color: AppColors.grey..withOpacity(0.5),
              ),
              cText('리뷰 저작권',
                  color: AppColors.grey,
                  fontSize: MyFonts.size12,
                  fontWeight: FontWeightManager.regular),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Icon(
                Icons.send,
                size: 16,
                color: AppColors.grey.withOpacity(0.3),
              ),
              const SizedBox(width: 2),
              cText('review@logo.com',
                  color: AppColors.grey,
                  fontSize: MyFonts.size10,
                  fontWeight: FontWeightManager.regular),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.grey)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Row(
                    children: [
                      cText('KOR  ',
                          color: AppColors.grey,
                          fontSize: MyFonts.size10,
                          fontWeight: FontWeightManager.regular),
                      const Icon(
                        size: 16,
                        Icons.arrow_drop_down_rounded,
                        color: AppColors.grey,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Divider(
              color: AppColors.grey.withOpacity(0.5),
              endIndent: 2,
              indent: 2,
            ),
          ),
          cText('@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구',
              color: AppColors.grey,
              fontSize: MyFonts.size10,
              fontWeight: FontWeightManager.regular),
          const SizedBox(height: 8)
        ],
      ),
    ),
  );
}

Container customDivider() {
  return Container(
    height: 16,
    color: AppColors.grey.withOpacity(0.2),
  );
}
