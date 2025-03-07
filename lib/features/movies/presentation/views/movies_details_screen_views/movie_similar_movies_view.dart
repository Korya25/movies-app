import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/presentation/component/listview_card_section.dart';
import 'package:movies_ap_p/core/presentation/component/listview_section.dart';
import 'package:movies_ap_p/core/presentation/component/title_section.dart';
import 'package:movies_ap_p/core/resources/constant/app_dimens.dart';
import 'package:movies_ap_p/core/resources/constant/app_strings.dart';

class MovieSimilarMoviesView extends StatelessWidget {
  const MovieSimilarMoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleSection(title: AppStrings.similar),
        ListviewSection(
          height: Dimens.size240,
          itemCount: 10,
          itemBuilder: (context, index) => ListviewCardSection(),
        ),
      ],
    );
  }
}
