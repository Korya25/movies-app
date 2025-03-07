import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/presentation/component/title_section.dart';
import 'package:movies_ap_p/core/resources/constant/app_strings.dart';
import 'package:movies_ap_p/features/shows/presentation/widget/episode_card.dart';

class LastEpisodesSection extends StatelessWidget {
  const LastEpisodesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title Section
        TitleSection(title: AppStrings.lastEpisodeOnAir),

        // Last Episodes on Air
        EpisodeCard(),
      ],
    );
  }
}
