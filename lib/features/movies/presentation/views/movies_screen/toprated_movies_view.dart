import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_ap_p/core/presentation/component/header_section.dart';
import 'package:movies_ap_p/core/presentation/component/listview_card_section.dart';
import 'package:movies_ap_p/core/presentation/component/listview_section.dart';
import 'package:movies_ap_p/core/resources/constant/app_dimens.dart';
import 'package:movies_ap_p/core/resources/constant/app_strings.dart';
import 'package:movies_ap_p/core/resources/router/app_routes.dart';

class TopratedMoviesView extends StatelessWidget {
  const TopratedMoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderSection(
          title: AppStrings.topRatedMovies,
          onTap: () {
            context.goNamed(AppRoutes.topRatedMoviesScreen);
          },
        ),
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
