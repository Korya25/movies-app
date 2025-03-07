import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    super.key,
    required this.itemBuilder,
    required this.itemCount,
  });
  final Widget Function(BuildContext, int, int) itemBuilder;
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return CarouselSlider.builder(
      itemCount: itemCount,
      options: CarouselOptions(
        viewportFraction: 1,
        height: size.height * 0.55,
        autoPlay: true,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
