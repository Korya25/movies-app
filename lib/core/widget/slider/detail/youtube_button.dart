import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/constant/app_colors.dart';
import 'package:movies_ap_p/core/constant/app_dimens.dart';

class YoutubeButton extends StatelessWidget {
  const YoutubeButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: Dimens.size40,
        width: Dimens.size40,
        decoration: const BoxDecoration(
          color: AppColors.primary,
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.play_arrow_rounded,
          color: AppColors.secondaryText,
        ),
      ),
    );
  }
}
