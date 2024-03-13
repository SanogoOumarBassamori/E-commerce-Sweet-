import 'package:flutter/material.dart';
import 'package:sweet/screens/splash/splash.dart';

import 'routes.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sweet - Clothes',
      theme: AppTheme.lightTheme(context),
      initialRoute: Splashview.routeName,
      routes: routes,
    );
  }
}
