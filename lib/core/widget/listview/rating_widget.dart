import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/constant/app_colors.dart';
import 'package:movies_ap_p/core/constant/app_dimens.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Icon(
          Icons.star_rate_rounded,
          color: AppColors.ratingIconColor,
          size: Dimens.size18,
        ),
        Text('7.8/10', style: textTheme.bodySmall),
      ],
    );
  }
}
