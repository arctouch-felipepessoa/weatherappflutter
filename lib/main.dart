import 'package:flutter/material.dart';

import 'screens/on_boarding_screen.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(new MaterialApp(
    home: SplashScreen(),
    routes: <String, WidgetBuilder>{
      "/OnBoardingPage": (BuildContext context) => OnBoardingPage()
    },
  ));
}
