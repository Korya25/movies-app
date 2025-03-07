import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/resources/constant/app_colors.dart';
import 'package:movies_ap_p/core/resources/constant/app_dimens.dart';

class NavigationButtons extends StatelessWidget {
  const NavigationButtons({super.key, required this.onBackPressed});

  final VoidCallback onBackPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Back Button
        InkWell(
          onTap: onBackPressed,
          child: Container(
            padding: const EdgeInsets.all(Dimens.padding8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.iconContainerColor,
            ),
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: AppColors.secondaryText,
              size: Dimens.size20,
            ),
          ),
        ),

        // Bookmark Button
        Container(
          padding: const EdgeInsets.all(Dimens.padding8),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.iconContainerColor,
          ),
          child: Icon(
            Icons.bookmark_rounded,
            color: AppColors.secondaryText,
            size: Dimens.size20,
          ),
        ),
      ],
    );
  }
}
