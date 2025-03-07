import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/presentation/component/movie_card_details_content.dart';
import 'package:movies_ap_p/core/presentation/component/navigation_buttons.dart';
import 'package:movies_ap_p/core/presentation/component/slider_card_image.dart';
import 'package:movies_ap_p/core/resources/constant/app_dimens.dart';

class TvShowsDetailsCard extends StatelessWidget {
  const TvShowsDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SliderCardImage(
          imageUrl:
              'https://imageio.forbes.com/i-forbesimg/media/lists/teams/real-madrid_416x416.jpg?format=jpg',
        ),

        MovieCardDetailsContent(),
        // Navigation Buttons
        Padding(
          padding: EdgeInsets.only(
            top: Dimens.padding12,
            left: Dimens.padding16,
            right: Dimens.padding16,
          ),
          child: NavigationButtons(
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ],
    );
  }
}
