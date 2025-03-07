import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/presentation/component/circle_dot.dart';
import 'package:movies_ap_p/core/resources/constant/app_colors.dart';
import 'package:movies_ap_p/core/resources/constant/app_dimens.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // Movie Title
        Text(
          'Title',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: textTheme.titleMedium,
        ),

        // Movie Details (Year, Genre, Duration)
        Padding(
          padding: const EdgeInsets.only(
            top: Dimens.padding4,
            bottom: Dimens.padding6,
          ),
          child: Row(
            children: [
              Text('2023', style: textTheme.bodyLarge),
              const CircleDot(),
              Text('Action', style: textTheme.bodyLarge),
              const CircleDot(),
              Text('1h 55m', style: textTheme.bodyLarge),
            ],
          ),
        ),

        // Movie Rating
        Row(
          children: [
            const Icon(
              Icons.star_rate_rounded,
              color: AppColors.ratingIconColor,
              size: Dimens.size18,
            ),
            Text('6.1 ', style: textTheme.bodyMedium),
            Text('(346)', style: textTheme.bodySmall),
          ],
        ),
      ],
    );
  }
}
