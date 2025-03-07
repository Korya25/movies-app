import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/presentation/component/title_section.dart';
import 'package:movies_ap_p/core/resources/constant/app_dimens.dart';
import 'package:movies_ap_p/core/resources/constant/app_strings.dart';
import 'package:movies_ap_p/features/shows/presentation/widget/season_card.dart';

class SeasonSection extends StatelessWidget {
  const SeasonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Season Title
        TitleSection(title: AppStrings.seasons),

        // Seasons List
        SizedBox(
          height: Dimens.size400,
          child: ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: Dimens.padding16),
            physics: const BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) => SeasonCard(),
            separatorBuilder: (context, index) => const SizedBox(height: 10),
          ),
        ),
      ],
    );
  }
}
