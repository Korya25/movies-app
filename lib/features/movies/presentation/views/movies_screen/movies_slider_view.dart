import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/widget/slider/movie_slider/custom_slider.dart';
import 'package:movies_ap_p/core/widget/slider/movie_slider/slider_card_widget.dart';

class MoviesSliderView extends StatelessWidget {
  const MoviesSliderView({super.key});

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
