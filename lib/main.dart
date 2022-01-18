import 'package:flutter/material.dart';
import 'package:smart_farm/main_page.dart';
import 'package:smart_farm/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "main",
      onGenerateRoute: (settings) => RouteManager.getRoutes(settings),
    );
  }
}
