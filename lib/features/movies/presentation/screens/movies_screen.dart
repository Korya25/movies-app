import 'package:flutter/material.dart';
import 'package:movies_ap_p/features/movies/presentation/widget/movies_slider_section.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: MoviesWidget()));
  }
}

class MoviesWidget extends StatelessWidget {
  const MoviesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // Slider Section
        SliverToBoxAdapter(child: MoviesSliderSection()),

        // Popular Movies Section
        const SliverToBoxAdapter(
          child: Column(
            children: [
              // Popular Movies Widget
            ],
          ),
        ),

        // Top Rated Movies Section
        const SliverToBoxAdapter(
          child: Column(
            children: [
              // Top Rated Movies Widget
            ],
          ),
        ),
      ],
    );
  }
}
