import 'package:flutter/material.dart';
import 'package:movies_ap_p/features/shows/presentation/views/tv_show_slider_view.dart';

class TvShowsScreen extends StatelessWidget {
  const TvShowsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: TvShowsWidget());
  }
}

class TvShowsWidget extends StatelessWidget {
  const TvShowsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        //  Slider View
        SliverToBoxAdapter(child: TvShowSliderView()),

        // Popular Shows View

        // Top Rated Shows View
      ],
    );
  }
}
