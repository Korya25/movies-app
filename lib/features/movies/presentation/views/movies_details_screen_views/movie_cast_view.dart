import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/presentation/component/listview_section.dart';
import 'package:movies_ap_p/core/presentation/component/title_section.dart';
import 'package:movies_ap_p/core/resources/constant/app_dimens.dart';
import 'package:movies_ap_p/core/resources/constant/app_strings.dart';
import 'package:movies_ap_p/features/movies/presentation/widget/cast_card.dart';

class MovieCastView extends StatelessWidget {
  const MovieCastView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleSection(title: AppStrings.cast),
        ListviewSection(
          height: Dimens.size175,
          itemBuilder: (context, index) => CastCard(),
          itemCount: 10,
        ),
      ],
    );
  }
}
