import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/constant/app_strings.dart';
import 'package:movies_ap_p/core/widget/common/custom_app_bar.dart';
import 'package:movies_ap_p/core/widget/listview/vertical_list_view.dart';
import 'package:movies_ap_p/core/widget/listview/vertical_list_view_card.dart';

class PopularMoviesScreen extends StatelessWidget {
  const PopularMoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppStrings.popularMovies),
      body: PopularMoviesWidget(),
    );
  }
}

class PopularMoviesWidget extends StatelessWidget {
  const PopularMoviesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return VerticalListView(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return VerticalListViewCard();
      },
    );
  }
}
