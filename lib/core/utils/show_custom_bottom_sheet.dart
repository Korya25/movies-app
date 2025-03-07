import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/resources/constant/app_colors.dart';
import 'package:movies_ap_p/core/resources/constant/app_dimens.dart';

void showCustomBottomSheet(BuildContext context, Widget child) {
  final size = MediaQuery.of(context).size.height;
  showModalBottomSheet(
    context: context,
    backgroundColor: AppColors.secondaryBackground,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(Dimens.size20)),
    ),
    builder: (context) {
      return SizedBox(height: size * 0.5, child: child);
    },
  );
}
