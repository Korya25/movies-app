import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/presentation/component/dotindicator_row.dart';
import 'package:movies_ap_p/core/resources/constant/app_constant.dart';
import 'package:movies_ap_p/core/resources/constant/app_dimens.dart';

class SliderCardContent extends StatelessWidget {
  const SliderCardContent({super.key, required this.itemIndex});
  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: EdgeInsets.only(
        right: Dimens.padding16,
        left: Dimens.padding16,
        bottom: Dimens.padding10,
      ),
      child: SizedBox(
        height: size.height * 0.55,
        child: Column(
          spacing: 3,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Title
            Text(
              'Title',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: textTheme.titleMedium,
            ),

            // Release Date
            Text('Feb 13, 2023', style: textTheme.bodyLarge),

            // Dot Indicator Row
            DotIndicatorRow(
              itemCount: AppConstants.carouselSliderItemsCount,
              activeIndex: itemIndex,
            ),
          ],
        ),
      ),
    );
  }
}
