import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/presentation/component/title_section.dart';
import 'package:movies_ap_p/core/resources/constant/app_dimens.dart';
import 'package:movies_ap_p/core/resources/constant/app_strings.dart';
import 'package:readmore/readmore.dart';

class TvShowsOverviewSection extends StatelessWidget {
  const TvShowsOverviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleSection(title: AppStrings.story),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimens.padding16),
          child: ReadMoreText(
            'Real Madrid overcame Atlético in the first leg of the Champions League last-16 tie to claim the upper hand in the tie, which will be settled on Wednesday 12 at the Metropolitano. Rodrygo gave Ancelotti’s side the lead after just four minutes and Julián Álvarez drew level in the 32nd minute. In the second half, Brahim made it 2-1 with a wonderful piece of skill The European champions raced into an early lead in the tie. After just four minutes, Valverde caught Galán by surprise with a precise pass to Rodrygo, who beat the Atlético defender on the run, cut inside from the right wing and fired home a beautifully struck left-footed strike. Two minutes later, the same players were involved again. Rodrygo again beat Galán for pace and when he entered the area he was pulled down by the defender. The Bernabéu screamed for a penalty, but referee Turpin was not interested',
            trimLines: 4,
            trimMode: TrimMode.Line,
            style: textTheme.bodyLarge,
            moreStyle: textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w600,
            ),
            lessStyle: textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
