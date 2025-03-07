import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/resources/constant/app_dimens.dart';

class VerticalListView extends StatelessWidget {
  const VerticalListView({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
  });

  final int itemCount;
  final Widget Function(BuildContext context, int index) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(Dimens.padding8),
      // controller: _scrollController,
      physics: const BouncingScrollPhysics(),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
      separatorBuilder: (context, index) {
        return const SizedBox(height: Dimens.size10);
      },
    );
  }
}
