import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_ap_p/core/presentation/component/custom_app_bar.dart';
import 'package:movies_ap_p/core/presentation/component/vertical_list_view.dart';
import 'package:movies_ap_p/core/presentation/component/vertical_list_view_card.dart';
import 'package:movies_ap_p/core/resources/constant/app_strings.dart';
import 'package:movies_ap_p/core/resources/router/app_routes.dart';

class TopRatedTvShowsScreen extends StatelessWidget {
  const TopRatedTvShowsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppStrings.topRatedTvShows),
      body: SafeArea(child: TopRatedTvShowsWidget()),
    );
  }
}

class TopRatedTvShowsWidget extends StatelessWidget {
  const TopRatedTvShowsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return VerticalListView(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return VerticalListViewCard(
          onTap: () {
            context.goNamed(AppRoutes.tvShowDetailsScreen);
          },
        );
      },
    );
  }
}
