import 'package:flutter/widgets.dart';
import 'package:sweet/screens/sign_in/sign_in_screen.dart';
import 'package:sweet/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
};
