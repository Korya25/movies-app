import 'package:flutter/material.dart';
import 'package:movies_ap_p/features/shows/presentation/views/tv_shows_details_card.dart';
import 'package:movies_ap_p/features/shows/presentation/views/tv_shows_overview_section.dart';

class TvShowDetailsScreen extends StatelessWidget {
  const TvShowDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: TvShowDetailsWidget());
  }
}

class TvShowDetailsWidget extends StatelessWidget {
  const TvShowDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        // Tv Shows Details Card Section
        SliverToBoxAdapter(child: TvShowsDetailsCard()),

        // Tv Shows Overview Section
        SliverToBoxAdapter(child: TvShowsOverviewSection()),
      ],
    );
  }
}
