import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/constant/app_colors.dart';
import 'package:movies_ap_p/core/constant/app_dimens.dart';

class CircleDot extends StatelessWidget {
  const CircleDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.padding6),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.circleDotColor,
        ),
        width: Dimens.size6,
        height: Dimens.size6,
      ),
    );
  }
}
