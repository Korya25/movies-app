import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/presentation/component/image_with_shimmer.dart';
import 'package:movies_ap_p/core/resources/constant/app_dimens.dart';
import 'package:movies_ap_p/core/resources/constant/app_strings.dart';

class EpisodeCard extends StatelessWidget {
  const EpisodeCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: Dimens.size84,
      padding: const EdgeInsets.symmetric(horizontal: Dimens.padding16),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: Dimens.padding8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(Dimens.borderRadius8),
              child: ImageWithShimmer(
                height: double.infinity,
                width: Dimens.size150,
                imageUrl:
                    'https://www.themoviedb.org/t/p/w220_and_h330_face/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg',
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Episode Number
                Text('${AppStrings.episode} 70', style: textTheme.bodyMedium),

                // Episode Name
                Text(
                  'Mindy Lahiri ',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.bodyLarge,
                ),

                // Episode Air Date
                Text('Mar 06.2025', style: textTheme.bodyLarge),

                // Episode run time
                Text('41m', style: textTheme.bodyLarge),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
