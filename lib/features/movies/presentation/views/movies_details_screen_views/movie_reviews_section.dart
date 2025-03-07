import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/presentation/component/listview_section.dart';
import 'package:movies_ap_p/core/presentation/component/title_section.dart';
import 'package:movies_ap_p/core/resources/constant/app_dimens.dart';
import 'package:movies_ap_p/core/resources/constant/app_strings.dart';
import 'package:movies_ap_p/features/movies/presentation/widget/review_card.dart';

class MovieReviewsSection extends StatelessWidget {
  const MovieReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleSection(title: AppStrings.reviews),
        ListviewSection(
          height: Dimens.size175,
          itemBuilder: (context, index) {
            return ReviewCard();
          },
          itemCount: 10,
        ),
      ],
    );
  }
}
