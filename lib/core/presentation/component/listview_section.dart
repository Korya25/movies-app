import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/resources/constant/app_dimens.dart';

class ListviewSection extends StatelessWidget {
  const ListviewSection({
    super.key,
    required this.height,
    required this.itemBuilder,
    required this.itemCount,
  });
  final double height;
  final int itemCount;
  final Widget? Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: Dimens.padding16),
        itemCount: itemCount,
        scrollDirection: Axis.horizontal,
        itemBuilder: itemBuilder,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: Dimens.size10);
        },
      ),
    );
  }
}
