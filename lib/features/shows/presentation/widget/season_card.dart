import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/presentation/component/image_with_shimmer.dart';
import 'package:movies_ap_p/core/resources/constant/app_colors.dart';
import 'package:movies_ap_p/core/resources/constant/app_dimens.dart';
import 'package:movies_ap_p/core/resources/constant/app_strings.dart';
import 'package:movies_ap_p/core/utils/show_custom_bottom_sheet.dart';
import 'package:movies_ap_p/features/shows/presentation/widget/episodes_widget.dart';

class SeasonCard extends StatelessWidget {
  const SeasonCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        _showBottomSheet(context);
      },
      child: SizedBox(
        height: 160,
        width: double.infinity,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: Dimens.padding16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Dimens.size8),
                child: ImageWithShimmer(
                  width: Dimens.size110,
                  height: double.infinity,
                  imageUrl:
                      'https://ssl.gstatic.com/onebox/media/sports/logos/RDTXHVLGhO3Emt27QslOCw_64x64.png',
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Season 1',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: Dimens.padding6,
                    ),
                    child: Text('99 Episodes', style: textTheme.bodyLarge),
                  ),
                  Text(
                    '${AppStrings.airDate} Feb 25 ,2014',
                    style: textTheme.bodyLarge,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: Dimens.padding4),
                    child: Text(
                      'overview',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColors.primaryText,
              size: Dimens.size18,
            ),
          ],
        ),
      ),
    );
  }
}

void _showBottomSheet(context) {
  showCustomBottomSheet(context, const EpisodesWidget());
}
