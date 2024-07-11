import 'package:flutter/material.dart';
import 'package:hyperhire_task/core/constants/products_constants.dart';
import 'package:hyperhire_task/core/theme/app_colors.dart';
import 'package:hyperhire_task/core/theme/font_manager.dart';
import 'package:hyperhire_task/widgets/app_text.dart';

Widget productWidget(BuildContext context, int index) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 12),
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
              padding: const EdgeInsets.all(6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(products[index].rankImage),
                  Image.asset(products[index].image),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              cText(products[index].title,
                  color: AppColors.black,
                  maxLines: 1,
                  minFontSize: 14,
                  fontSize: MyFonts.size14,
                  fontWeight: FontWeightManager.medium,
                  overflow: TextOverflow.ellipsis),
              Column(
                children: List.generate(
                  products[index].content.length,
                  (i) => Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.circle,
                          size: 6,
                          color: AppColors.grey,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: cText(products[index].content[i],
                              color: AppColors.black,
                              maxLines: 1,
                              minFontSize: 12,
                              fontSize: MyFonts.size12,
                              fontWeight: FontWeightManager.medium,
                              overflow: TextOverflow.ellipsis),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.star,
                    size: 20,
                    color: AppColors.starColor,
                  ),
                  const SizedBox(width: 6),
                  cText(products[index].rating.toString(),
                      fontSize: MyFonts.size12,
                      fontWeight: FontWeightManager.bold,
                      color: AppColors.starColor),
                  const SizedBox(width: 2),
                  cText('(${products[index].reviewCount})',
                      fontSize: MyFonts.size12,
                      fontWeight: FontWeightManager.bold,
                      color: AppColors.grey.withOpacity(0.4)),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: cText('LG전자',
                          fontSize: MyFonts.size10,
                          fontWeight: FontWeightManager.regular,
                          color: AppColors.grey),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: cText('고화질',
                          fontSize: MyFonts.size10,
                          fontWeight: FontWeightManager.regular,
                          color: AppColors.grey),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}
