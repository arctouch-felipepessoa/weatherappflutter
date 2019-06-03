import 'package:flutter/material.dart';

import 'onboarding/onboarding1.dart';
import 'onboarding/onboarding2.dart';
import 'onboarding/onboarding3.dart';

void main() {
  runApp(new MaterialApp(
    home: SplashPage(),
    routes: <String, WidgetBuilder>{
      "/OnBoardingPage": (BuildContext context) => OnBoardingPage()
    },
  ));
}

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        Navigator.of(context).pushReplacementNamed("/OnBoardingPage");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo.png', width: 236.0, height: 180.0)
          ],
        ));
  }
}

class OnBoardingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {

  @override
  Widget build(BuildContext context) {
    return Text("test");
  }
}
