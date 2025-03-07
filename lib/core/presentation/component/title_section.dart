import 'package:flutter/material.dart';
import 'package:movies_ap_p/core/resources/constant/app_dimens.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: Dimens.padding16,
        left: Dimens.padding16,
        top: Dimens.padding8,
        bottom: Dimens.padding4,
      ),
      child: Text(title, style: Theme.of(context).textTheme.titleSmall),
    );
  }
}
