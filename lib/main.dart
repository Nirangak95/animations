import 'package:animations/screens/animated_opacity.dart';
import 'package:animations/screens/hero_page.dart';
import 'package:animations/screens/home_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'screens/animated_builder.dart';
import 'screens/animation_controller.dart';

void main() {
  runApp(MyApp()); // Wrap your app
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        "animationController": (BuildContext context) =>
            const AnimationControllerPage(),
        "hero": (BuildContext context) => const HeroPage(),
        "animatedOpacity": (BuildContext context) =>
            const AnimatedOpacityPage(),
        "animatedBuilder": (BuildContext context) =>
            const AnimatedBuilderPage(),
      },
    );
  }
}
