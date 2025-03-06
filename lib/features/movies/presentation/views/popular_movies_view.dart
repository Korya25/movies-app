import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/constant/app_dimens.dart';
import 'package:movies_ap_p/core/constant/app_strings.dart';
import 'package:movies_ap_p/core/widget/listview_cards/listview_card_section.dart';
import 'package:movies_ap_p/core/widget/listview_cards/listview_section.dart';
import 'package:movies_ap_p/core/widget/other/header_section.dart';

class PopularMoviesView extends StatelessWidget {
  const PopularMoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header Section
        HeaderSection(title: AppStrings.popularMovies, onTap: () {}),

        // Popular Movies List View
        ListviewSection(
          height: Dimens.size240,
          itemBuilder: (context, index) {
            return const ListviewCardSection();
          },
          itemCount: 10,
        ),
      ],
    );
  }
}
