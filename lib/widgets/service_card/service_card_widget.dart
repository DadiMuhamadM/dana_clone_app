import 'package:dana_clone_app/utils/assets_locations.dart';
import 'package:dana_clone_app/utils/dana_clone_theme.dart';
import 'package:dana_clone_app/widgets/widget.dart';
import 'package:flutter/material.dart';

class ServiceCardWidget extends StatelessWidget {
  const ServiceCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryTextTheme = Theme.of(context).primaryTextTheme;
    final textTheme = Theme.of(context).textTheme;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: DanaCloneTheme.grey.withOpacity(0.4),
          width: 0.3,
        ),
      ),
      margin: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 35, 16, 15),
            child: Row(
              children: [
                Image(
                  image: AssetLocations.iconLocation('coupon'),
                  width: 40,
                ),
                const Gap(
                  v: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DANA Deals',
                      style: primaryTextTheme.headline4,
                    ),
                    Text(
                      'Jajan Hemat s/d 43%',
                      style: textTheme.subtitle1,
                    )
                  ],
                ),
                const Spacer(),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'SERBU',
                      style: primaryTextTheme.button,
                    ))
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 22, bottom: 12, right: 22),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    ServiceCardIcon(
                      iconName: 'electricity',
                      iconSubtitle: 'Electricity',
                    ),
                    ServiceCardIcon(
                      iconName: 'rewards',
                      iconSubtitle: 'Voucher A+ Rewards',
                    ),
                    ServiceCardIcon(
                      iconName: 'emas',
                      iconSubtitle: 'eMAS',
                    ),
                    ServiceCardIcon(
                      iconName: 'goals',
                      iconSubtitle: 'Dana Goals',
                    ),
                  ],
                ),
                Gap(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    ServiceCardIcon(
                      iconName: 'item_digital',
                      iconSubtitle: 'Electricity',
                      iconSize: 25,
                    ),
                    ServiceCardIcon(
                      iconName: 'pulsa',
                      iconSubtitle: 'Pulsa &\nData',
                      iconSize: 22,
                    ),
                    ServiceCardIcon(
                      iconName: 'dana_kaget',
                      iconSubtitle: 'DANA Kaget',
                      iconSize: 22,
                    ),
                    ServiceCardIcon(
                      iconName: 'view_all',
                      iconSubtitle: 'View All',
                      iconSize: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
