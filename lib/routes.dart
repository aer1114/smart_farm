import 'package:flutter/material.dart';
import 'package:smart_farm/screens/auth/login_page.dart';
import 'package:smart_farm/screens/home/home_page.dart';

class RouteManager {
  static getRoutes(RouteSettings settings) {
    var args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
    }
  }
}
