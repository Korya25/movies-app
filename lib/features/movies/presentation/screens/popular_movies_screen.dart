import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/constant/app_dimens.dart';
import 'package:movies_ap_p/core/constant/app_strings.dart';
import 'package:movies_ap_p/core/widget/common/custom_app_bar.dart';
import 'package:movies_ap_p/core/widget/listview/vertical_list_view_card.dart';

class PopularMoviesScreen extends StatelessWidget {
  const PopularMoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppStrings.popularMovies),
      body: PopularMoviesWidget(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return VerticalListViewCard();
        },
      ),
    );
  }
}

class PopularMoviesWidget extends StatelessWidget {
  final int itemCount;
  final Widget Function(BuildContext context, int index) itemBuilder;
  const PopularMoviesWidget({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
  });

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
