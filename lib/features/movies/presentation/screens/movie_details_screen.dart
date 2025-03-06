import 'package:flutter/material.dart';
import 'package:movies_ap_p/features/movies/presentation/views/movies_details_screen_views/movie_cast_view.dart';
import 'package:movies_ap_p/features/movies/presentation/views/movies_details_screen_views/movie_details_card.dart';
import 'package:movies_ap_p/features/movies/presentation/views/movies_details_screen_views/movie_overview_section.dart';
import 'package:movies_ap_p/features/movies/presentation/views/movies_details_screen_views/movie_reviews_section.dart';
import 'package:movies_ap_p/features/movies/presentation/views/movies_details_screen_views/movie_similar_movies_view.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: MovieDetailsWidget()));
  }
}

class MovieDetailsWidget extends StatelessWidget {
  const MovieDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        // Movie Details Card Section
        SliverToBoxAdapter(child: MovieDetailsCard()),

        // Overview Section
        SliverToBoxAdapter(child: MovieOverviewSection()),

        // Cast View
        SliverToBoxAdapter(child: MovieCastView()),
        // Reviews Section
        SliverToBoxAdapter(child: MovieReviewsSection()),

        // Similar Movies View
        SliverToBoxAdapter(child: MovieSimilarMoviesView()),
      ],
    );
  }
}
