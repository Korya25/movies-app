import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/presentation/component/image_with_shimmer.dart';
import 'package:movies_ap_p/core/resources/constant/app_colors.dart';

class SliderCardImage extends StatelessWidget {
  const SliderCardImage({super.key, required this.imageUrl});

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ShaderMask(
      blendMode: BlendMode.dstIn,
      shaderCallback: (rect) {
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.black, AppColors.black, AppColors.transparent],
          stops: [0.3, 0.5, 1],
        ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
      },
      child: ImageWithShimmer(
        height: size.height * 0.6,
        width: double.infinity,
        imageUrl: imageUrl,
      ),
    );
  }
}
