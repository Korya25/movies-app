import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/presentation/component/movie_details.dart';
import 'package:movies_ap_p/core/presentation/component/youtube_button.dart';
import 'package:movies_ap_p/core/resources/constant/app_dimens.dart';

class MovieCardDetailsContent extends StatelessWidget {
  const MovieCardDetailsContent({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        // Movie Details and YouTube Button
        Padding(
          padding: EdgeInsets.only(
            right: Dimens.padding16,
            left: Dimens.padding16,
            bottom: Dimens.padding10,
          ),
          child: SizedBox(
            height: size.height * 0.6,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Movie Details
                const Expanded(child: MovieDetails()),

                // YouTube Button
                YoutubeButton(onPressed: () {}),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
