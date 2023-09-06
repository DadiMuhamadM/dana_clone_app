import 'package:dana_clone_app/pages/home_page.dart';
import 'package:dana_clone_app/pages/me_page.dart';
import 'package:dana_clone_app/pages/pocket_page.dart';
import 'package:flutter/material.dart';

import '../pages/history_page.dart';

class ListOfPages {
  static List<Widget> pages = [
    const HomePage(),
    const HistoryPage(),
    const PocketPage(),
    const MePage(),
  ];
}
