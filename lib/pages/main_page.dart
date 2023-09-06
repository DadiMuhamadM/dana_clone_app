import 'package:dana_clone_app/providers/bottom_navigation_provider.dart';
import 'package:dana_clone_app/utils/assets_locations.dart';
import 'package:dana_clone_app/utils/dana_clone_theme.dart';
import 'package:dana_clone_app/utils/list_of_pages.dart';
import 'package:flutter/widgets.dart';
import 'package:dana_clone_app/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DanaCloneTheme.whiteBg,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        toolbarHeight: kToolbarHeight + 1,
        elevation: 0,
        titleSpacing: 0,
        title: const AppBarTitleWidget(),
        actions: [
          Image(
            image: AssetLocations.iconLocation('message'),
            width: 35,
          ),
          const Gap(
            v: 16,
          )
        ],
      ),
      extendBody: true,
      body: Consumer<BottomNavProvider>(
        builder: (context, provider, child) {
          return ListOfPages.pages[provider.selectedIndex];
        },
      ),
      bottomNavigationBar: SizedBox(
        height: 95,
        child: CustomBottonNavbar(),
      ),
    );
  }
}
