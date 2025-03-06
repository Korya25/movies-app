import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/constant/app_colors.dart';
import 'package:movies_ap_p/core/constant/app_dimens.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key, required this.title, required this.onTap});
  final String title;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Dimens.padding4,
        horizontal: Dimens.padding16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: textTheme.titleSmall),
          InkWell(
            onTap: onTap,
            child: Row(
              children: [
                Text('see all', style: textTheme.bodyLarge),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: Dimens.size12,
                  color: AppColors.primaryText,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
