import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/presentation/component/slider_card_content.dart';
import 'package:movies_ap_p/core/presentation/component/slider_card_image.dart';

class SliderCard extends StatelessWidget {
  const SliderCard({
    super.key,
    required this.imageUrl,
    required this.itemIndex,
    required this.onTap,
  });
  final String imageUrl;
  final int itemIndex;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          // Slider Card Image
          SliderCardImage(imageUrl: imageUrl),

          // Slider Card Content
          SliderCardContent(itemIndex: itemIndex),
        ],
      ),
    );
  }
}
