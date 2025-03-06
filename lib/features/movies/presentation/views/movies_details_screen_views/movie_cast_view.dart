import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/constant/app_dimens.dart';
import 'package:movies_ap_p/core/constant/app_strings.dart';
import 'package:movies_ap_p/core/widget/listview/listview_section.dart';
import 'package:movies_ap_p/core/widget/slider/detail/cast_card.dart';
import 'package:movies_ap_p/core/widget/slider/detail/title_section.dart';

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
