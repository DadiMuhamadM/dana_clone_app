import 'package:dana_clone_app/utils/utils.dart';

import 'package:flutter/material.dart';

import '../widgets/gap.dart';
import '../widgets/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: DanaCloneTheme.whiteBg,
          height: 390,
          child: Stack(
            children: [
              Container(
                height: 205,
                color: DanaCloneTheme.mainBlue,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeaderWidget(),
                  ServiceCardWidget(),
                ],
              )
            ],
          ),
        ),
        const FeedCardWidget(),
        const ImageLoopSliderWidget(),
      ],
    );
  }
}
