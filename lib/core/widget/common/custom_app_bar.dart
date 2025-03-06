import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_ap_p/core/constant/app_colors.dart';
import 'package:movies_ap_p/core/constant/app_dimens.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});

  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(Dimens.size60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading:
          context.canPop()
              ? IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: AppColors.primaryBtnText,
                  size: Dimens.size20,
                ),
              )
              : null,
    );
  }
}
