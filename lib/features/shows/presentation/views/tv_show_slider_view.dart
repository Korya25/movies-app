import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_ap_p/core/presentation/component/custom_slider.dart';
import 'package:movies_ap_p/core/presentation/component/slider_card_widget.dart';
import 'package:movies_ap_p/core/resources/constant/app_constant.dart';
import 'package:movies_ap_p/core/resources/router/app_routes.dart';

class TvShowSliderView extends StatelessWidget {
  const TvShowSliderView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSlider(
      itemBuilder:
          (context, itemIndex, _) => SliderCard(
            imageUrl:
                'https://imageio.forbes.com/i-forbesimg/media/lists/teams/real-madrid_416x416.jpg?format=jpg',
            itemIndex: itemIndex,
            onTap: () {
              context.goNamed(AppRoutes.tvShowDetailsScreen);
            },
          ),
      itemCount: AppConstants.carouselSliderItemsCount,
    );
  }
}
