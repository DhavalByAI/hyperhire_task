import 'package:flutter/material.dart';
import 'package:hyperhire_task/core/constants/image_constant.dart';
import 'package:hyperhire_task/core/constants/products_constants.dart';
import 'package:hyperhire_task/core/theme/app_colors.dart';
import 'package:hyperhire_task/core/theme/font_manager.dart';
import 'package:hyperhire_task/widgets/app_text.dart';

Widget profileImageInfoWidget(int heroTag) {
  return Column(
    children: [
      Hero(
        tag: heroTag,
        child: CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage(ImageConstant.profile),
        ),
      ),
      const SizedBox(height: 12),
      cText('Name${heroTag + 1}',
          color: AppColors.black,
          fontSize: MyFonts.size18,
          fontWeight: FontWeightManager.medium),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(ImageConstant.rank),
          cText(' 골드',
              color: AppColors.starColor,
              fontSize: MyFonts.size14,
              fontWeight: FontWeightManager.medium),
        ],
      ),
      const SizedBox(height: 24),
      Container(
        decoration: BoxDecoration(
            color: AppColors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: cText('조립컴 업체를 운영하며 리뷰를 작성합니다',
              fontSize: MyFonts.size10,
              fontWeight: FontWeightManager.regular,
              color: AppColors.grey),
        ),
      ),
    ],
  );
}

Widget productReviewWidget(BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Row(
              children: [
                cText('작성한 리뷰 ',
                    color: AppColors.black,
                    fontSize: MyFonts.size16,
                    fontWeight: FontWeightManager.medium),
                cText('총 35개',
                    color: AppColors.grey,
                    fontSize: MyFonts.size12,
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
                        cText('최신순  ',
                            color: AppColors.grey,
                            fontSize: MyFonts.size10,
                            fontWeight: FontWeightManager.regular),
                        const Icon(
                          size: 18,
                          Icons.arrow_drop_down_rounded,
                          color: AppColors.grey,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Container(
          height: 1,
          color: AppColors.grey.withOpacity(0.15),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: AppColors.grey.withOpacity(0.5),
                    width: 1,
                  )),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(products[2].image),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: cText('AMD 라이젠 5 5600X\n버미어',
                        color: AppColors.black,
                        maxLines: 2,
                        minFontSize: 14,
                        fontSize: MyFonts.size14,
                        fontWeight: FontWeightManager.semiBold,
                        overflow: TextOverflow.ellipsis),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ...List.generate(
                          5,
                          (index) => Icon(
                                Icons.star,
                                size: 20,
                                color: index == 4
                                    ? AppColors.grey.withOpacity(0.2)
                                    : AppColors.starColor,
                              )),
                      const SizedBox(width: 6),
                      cText('4.07',
                          fontSize: MyFonts.size14,
                          fontWeight: FontWeightManager.semiBold,
                          color: AppColors.black),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
        child: Container(
          height: 1,
          color: AppColors.grey.withOpacity(0.15),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            CircleAvatar(
                radius: 16, backgroundImage: AssetImage(ImageConstant.profile)),
            const SizedBox(width: 6),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: cText('Name1',
                      color: AppColors.black,
                      maxLines: 2,
                      minFontSize: 14,
                      fontSize: MyFonts.size14,
                      fontWeight: FontWeightManager.medium,
                      overflow: TextOverflow.ellipsis),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ...List.generate(
                        5,
                        (index) => Icon(
                              Icons.star,
                              size: 12,
                              color: index == 4
                                  ? AppColors.grey.withOpacity(0.2)
                                  : AppColors.starColor,
                            )),
                    const SizedBox(width: 6),
                    cText('2022.20.19',
                        fontSize: MyFonts.size10,
                        fontWeight: FontWeightManager.semiBold,
                        color: AppColors.grey.withOpacity(0.5)),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Icon(
              Icons.bookmark_border_rounded,
              color: AppColors.grey.withOpacity(0.5),
            )
          ],
        ),
      ),
      const SizedBox(width: 12),
      Padding(
        padding: const EdgeInsets.only(left: 12),
        child: SizedBox(
          height: 16,
          child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => cText('“가격 저렴해요"',
                  fontSize: MyFonts.size14,
                  fontWeight: FontWeightManager.bold,
                  color: AppColors.grey.withOpacity(0.6)),
              separatorBuilder: (context, index) => const SizedBox(width: 24),
              itemCount: 5),
        ),
      ),
      const SizedBox(width: 12),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Row(
          children: [
            Image.asset(IconConstant.lightning, height: 14),
            const SizedBox(width: 12),
            Flexible(
              child: cText(
                  '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
                  fontSize: MyFonts.size10,
                  fontWeight: FontWeightManager.regular,
                  color: AppColors.black.withOpacity(0.6)),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12)
            .copyWith(top: 0),
        child: Row(
          children: [
            Image.asset(
              IconConstant.lightning,
              height: 14,
              color: AppColors.grey.withOpacity(0.4),
            ),
            const SizedBox(width: 12),
            Flexible(
              child: cText(
                  '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
                  fontSize: MyFonts.size10,
                  fontWeight: FontWeightManager.regular,
                  color: AppColors.black.withOpacity(0.6)),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 48, bottom: 24),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Image.asset(
                ImageConstant.p1,
                height: 80,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Image.asset(
                ImageConstant.p2,
                height: 80,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Image.asset(
                ImageConstant.p3,
                height: 80,
              ),
            ),
          ],
        ),
      )
    ],
  );
}
