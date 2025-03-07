import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/presentation/component/image_with_shimmer.dart';
import 'package:movies_ap_p/core/resources/constant/app_colors.dart';
import 'package:movies_ap_p/core/resources/constant/app_dimens.dart';

class VerticalListViewCard extends StatelessWidget {
  const VerticalListViewCard({super.key, required this.onTap});
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: Dimens.size175,
        decoration: BoxDecoration(
          color: AppColors.secondaryBackground,
          borderRadius: BorderRadius.circular(Dimens.size8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(Dimens.padding8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Dimens.size8),
                child: ImageWithShimmer(
                  imageUrl:
                      'https://imageio.forbes.com/i-forbesimg/media/lists/teams/real-madrid_416x416.jpg?format=jpg',
                  width: Dimens.size110,
                  height: double.infinity,
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: Dimens.padding6),
                    child: Text(
                      'The Godfather',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.titleSmall,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: Dimens.padding12),
                        child: Text(
                          '1972',
                          textAlign: TextAlign.center,
                          style: textTheme.bodyLarge,
                        ),
                      ),
                      const Icon(
                        Icons.star_rate_rounded,
                        color: AppColors.ratingIconColor,
                        size: Dimens.size18,
                      ),
                      Text('8.7', style: textTheme.bodyLarge),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: Dimens.padding14),
                    child: Text(
                      'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
