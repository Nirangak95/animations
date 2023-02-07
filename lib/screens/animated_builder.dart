import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnimatedBuilderPage extends StatefulWidget {
  const AnimatedBuilderPage({super.key});

  @override
  State<AnimatedBuilderPage> createState() => _AnimatedBuilderPageState();
}

class _AnimatedBuilderPageState extends State<AnimatedBuilderPage>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 4))
          ..repeat();
  }

  @override
  Widget build(BuildContext context) {
    final animation = Tween(begin: 0, end: 2 * pi).animate(controller);

    return Scaffold(
      body: SafeArea(
        child: AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            return Transform.rotate(
              angle: (animation.value).toDouble(),
              child: const Center(
                child: FlutterLogo(
                  size: 100,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
