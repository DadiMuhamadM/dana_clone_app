import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../widget.dart';

class FriendFeedList3 extends StatelessWidget {
  const FriendFeedList3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        const TileWithAnimation(iconName: 'friend_3'),
        const Gap(),
        Expanded(
          child: RichText(
            text: TextSpan(
                text: 'Your Friend',
                style:
                    textTheme.headline6!.copyWith(fontWeight: FontWeight.w600),
                children: [
                  TextSpan(
                    text: ' Just received',
                    style: textTheme.headline6,
                  ),
                  TextSpan(
                    text: ' DANA Kaget',
                    style: textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: DanaCloneTheme.orange,
                    ),
                  ),
                ]),
          ),
        )
      ],
    );
  }
}
