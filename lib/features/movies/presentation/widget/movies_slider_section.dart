import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/widget/slider_card/custom_slider.dart';
import 'package:movies_ap_p/core/widget/slider_card/slider_card_widget.dart';

class MoviesSliderSection extends StatelessWidget {
  const MoviesSliderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSlider(
      itemBuilder:
          (context, itemIndex, _) => SliderCard(
            imageUrl:
                'https://imageio.forbes.com/i-forbesimg/media/lists/teams/real-madrid_416x416.jpg?format=jpg',
            itemIndex: itemIndex,
          ),
    );
  }
}
