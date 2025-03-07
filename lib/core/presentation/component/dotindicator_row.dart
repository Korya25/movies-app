import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/resources/constant/app_colors.dart';
import 'package:movies_ap_p/core/resources/constant/app_dimens.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: Dimens.padding10),
      width: isActive ? Dimens.size30 : Dimens.size6,
      height: Dimens.size6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: isActive ? AppColors.primary : AppColors.inactiveColor,
      ),
    );
  }
}

class DotIndicatorRow extends StatelessWidget {
  const DotIndicatorRow({
    super.key,
    required this.itemCount,
    required this.activeIndex,
  });

  final int itemCount;
  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(
        itemCount,
        (indexDot) => DotIndicator(isActive: indexDot == activeIndex),
      ),
    );
  }
}
