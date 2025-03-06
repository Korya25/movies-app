import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/constant/app_strings.dart';
import 'package:movies_ap_p/core/widget/common/custom_app_bar.dart';
import 'package:movies_ap_p/core/widget/listview/vertical_list_view.dart';
import 'package:movies_ap_p/core/widget/listview/vertical_list_view_card.dart';

class TopRatedMoviesScreen extends StatelessWidget {
  const TopRatedMoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: AppStrings.topRatedMovies),
      body: TopRatedMoviesWidget(),
    );
  }
}

class TopRatedMoviesWidget extends StatelessWidget {
  const TopRatedMoviesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return VerticalListView(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return const VerticalListViewCard();
      },
    );
  }
}
