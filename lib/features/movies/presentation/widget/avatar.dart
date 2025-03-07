import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/resources/constant/app_colors.dart';
import 'package:movies_ap_p/core/resources/constant/app_dimens.dart';
import 'package:shimmer/shimmer.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key, required this.avatarUrl});

  final String avatarUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: avatarUrl,
      imageBuilder:
          (context, imageProvider) => CircleAvatar(
            radius: Dimens.size20,
            backgroundColor: AppColors.transparent,
            backgroundImage: imageProvider,
          ),
      placeholder:
          (context, _) => Shimmer.fromColors(
            baseColor: Colors.grey[850]!,
            highlightColor: Colors.grey[800]!,
            child: const CircleAvatar(radius: Dimens.size20),
          ),
      errorWidget:
          (_, __, ___) => const Icon(Icons.error, color: AppColors.error),
    );
  }
}
