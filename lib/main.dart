import 'package:dana_clone_app/pages/home_page.dart';
import 'package:dana_clone_app/pages/main_page.dart';
import 'package:dana_clone_app/providers/bottom_navigation_provider.dart';
import 'package:dana_clone_app/utils/dana_clone_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = DanaCloneTheme.themeData();
    return ChangeNotifierProvider(
      create: (context) => BottomNavProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, child) =>
            ResponsiveWrapper.builder(child, defaultScale: true),
        title: 'Dana Clone',
        theme: theme,
        home: const MainPage(),
      ),
    );
  }
}
