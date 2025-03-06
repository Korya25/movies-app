import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_ap_p/core/router/app_routes.dart';
import 'package:movies_ap_p/core/widget/slider/movie_slider/slider_card_content.dart';
import 'package:movies_ap_p/core/widget/slider/common/slider_card_image.dart';

class SliderCard extends StatelessWidget {
  const SliderCard({
    super.key,
    required this.imageUrl,
    required this.itemIndex,
  });
  final String imageUrl;
  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.goNamed(AppRoutes.movieDetailsScreen);
      },
      child: Stack(
        children: [
          // Slider Card Image
          SliderCardImage(imageUrl: imageUrl),

          // Slider Card Content
          SliderCardContent(itemIndex: itemIndex),
        ],
      ),
    );
  }
}
