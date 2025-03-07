import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movies_ap_p/core/resources/constant/app_colors.dart';
import 'package:movies_ap_p/core/resources/constant/app_dimens.dart';
import 'package:movies_ap_p/core/utils/show_custom_bottom_sheet.dart';
import 'package:movies_ap_p/features/movies/presentation/widget/avatar.dart';
import 'package:movies_ap_p/features/movies/presentation/widget/review_content.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showCustomBottomSheet(context, const ReviewContent());
      },
      child: Container(
        padding: const EdgeInsets.all(Dimens.padding12),
        width: Dimens.size240,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.size12),
          color: AppColors.secondaryBackground,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildUserInfo(context),
            _buildReviewText(context),
            _buildRatingAndTime(context),
          ],
        ),
      ),
    );
  }

  Widget _buildUserInfo(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: Dimens.padding6),
          child: Avatar(
            avatarUrl:
                'https://mediaaws.almasryalyoum.com/news/large/2020/07/31/1273615_0.jpg',
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mohamed Ali',
                style: textTheme.bodyMedium,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                '@mohamedali',
                style: textTheme.bodyLarge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildReviewText(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Text(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      style: textTheme.bodyLarge,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildRatingAndTime(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RatingBarIndicator(
          rating: 2.5,
          itemSize: Dimens.size16,
          itemBuilder: (_, __) {
            return Icon(
              Icons.star_rate_rounded,
              color: AppColors.ratingIconColor,
            );
          },
        ),
        Text('2h ago', style: textTheme.bodyMedium),
      ],
    );
  }
}
