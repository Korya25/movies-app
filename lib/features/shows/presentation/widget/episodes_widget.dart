import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/resources/constant/app_dimens.dart';
import 'package:movies_ap_p/core/resources/constant/app_strings.dart';
import 'package:movies_ap_p/features/shows/presentation/widget/episode_card.dart';

class EpisodesWidget extends StatelessWidget {
  const EpisodesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            bottom: Dimens.padding8,
            top: Dimens.padding6,
          ),
          child: Text(AppStrings.episodes, style: textTheme.titleMedium),
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.only(bottom: Dimens.padding8),
            physics: const BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) => EpisodeCard(),
            separatorBuilder:
                (context, index) => const SizedBox(height: Dimens.size10),
          ),
        ),
      ],
    );
  }
}
