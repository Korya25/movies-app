import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/presentation/component/image_with_shimmer.dart';
import 'package:movies_ap_p/core/resources/constant/app_dimens.dart';

class CastCard extends StatelessWidget {
  const CastCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: Dimens.size100,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(Dimens.size8),
            child: ImageWithShimmer(
              imageUrl:
                  'https://mediaaws.almasryalyoum.com/news/large/2020/07/31/1273615_0.jpg',
              width: double.infinity,
              height: Dimens.size130,
            ),
          ),
          Text(
            'Ahmed refat',
            style: textTheme.bodyLarge,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
