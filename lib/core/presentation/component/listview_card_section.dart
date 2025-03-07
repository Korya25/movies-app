import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_ap_p/core/presentation/component/image_with_shimmer.dart';
import 'package:movies_ap_p/core/presentation/component/rating_widget.dart';
import 'package:movies_ap_p/core/resources/constant/app_dimens.dart';
import 'package:movies_ap_p/core/resources/router/app_routes.dart';

class ListviewCardSection extends StatelessWidget {
  const ListviewCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: Dimens.size120,
      child: Column(
        spacing: 5,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              context.goNamed(AppRoutes.movieDetailsScreen);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(Dimens.size8),
              child: ImageWithShimmer(
                height: Dimens.size175,
                width: double.infinity,
                imageUrl:
                    'https://imageio.forbes.com/i-forbesimg/media/lists/teams/real-madrid_416x416.jpg?format=jpg',
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Real Madrid CF: The Best Club in the World',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodyMedium,
              ),

              // Rating Widget
              RatingWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
