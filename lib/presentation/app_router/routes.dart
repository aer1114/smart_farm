import 'package:flutter/material.dart';
import 'package:smart_farm/main_page.dart';
import 'package:smart_farm/presentation/screens/auth/login_page.dart';
import 'package:smart_farm/presentation/screens/calendar/calendar_page.dart';
import 'package:smart_farm/presentation/screens/home/home_page.dart';
import 'package:smart_farm/presentation/screens/search_page/search_page.dart';
import 'package:smart_farm/presentation/screens/settings/settings.dart';

class RouteManager {
  static getRoutes(RouteSettings settings) {
    var args = settings.arguments;

    switch (settings.name) {
      case 'main':
        return MaterialPageRoute(builder: (_) => const MainPage());
      case 'login':
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case 'calendar':
        return MaterialPageRoute(builder: (_) => const CalendarPage());
      case 'settings':
        return MaterialPageRoute(builder: (_) => const SettingsPage());
      case 'search':
        return MaterialPageRoute(builder: (_) => const SearchPage());
      case 'home':
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
  }
}
