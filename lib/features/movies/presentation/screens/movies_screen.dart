import 'package:flutter/material.dart';
import 'package:movies_ap_p/features/movies/presentation/views/movies_slider_view.dart';
import 'package:movies_ap_p/features/movies/presentation/views/popular_movies_view.dart';

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
        // Slider View
        SliverToBoxAdapter(child: MoviesSliderView()),

        // Popular Movies View
        const SliverToBoxAdapter(child: PopularMoviesView()),

        // Top Rated Movies View
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
