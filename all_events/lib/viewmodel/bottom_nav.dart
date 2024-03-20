import 'package:all_events/view/bottomnav/date_page.dart';
import 'package:all_events/view/bottomnav/profile_page.dart';
import 'package:all_events/view/home/home_page.dart';
import 'package:flutter/material.dart';

class BottomNavState extends ChangeNotifier {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const DatePage(),
    const ProfilePage(),
  ];

  int get selectedIndex => _selectedIndex;
  List<Widget> get widgetOptions => _widgetOptions;

  void onItemTapped(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
