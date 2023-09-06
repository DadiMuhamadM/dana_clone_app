import 'package:flutter/material.dart';

import '../../utils/utils.dart';

import '../widget.dart';
import 'add_card_widget_animation.dart';

class AppBarTitleWidget extends StatelessWidget {
  const AppBarTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final primaryTextTheme = Theme.of(context).primaryTextTheme;
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          Image(
            image: AssetLocations.iconLocation('logo'),
            width: 28,
          ),
          const Gap(
            h: 8,
          ),
          Text(
            "Rp",
            style: primaryTextTheme.caption,
          ),
          const Gap(
            h: 8,
          ),
          Text(
            "49.000",
            style: primaryTextTheme.headline5,
          ),
          const Gap(
            h: 8,
          ),
          const SizedBox(
            height: 30,
            child: AddCardWidgetAnimation(),
          ),
        ],
      ),
    );
  }
}
