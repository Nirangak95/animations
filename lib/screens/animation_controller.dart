import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnimationControllerPage extends StatefulWidget {
  const AnimationControllerPage({super.key});

  @override
  State<AnimationControllerPage> createState() =>
      _AnimationControllerPageState();
}

//Need to mix with SingleTickerProviderStateMixin class
class _AnimationControllerPageState extends State<AnimationControllerPage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  double rotationAngle = 0;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    //For only foward
    animationController.forward();

    // animationController.repeat(reverse: true);

    //For only foward

    animationController.addListener(() {
      setState(() {
        rotationAngle = animationController.value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Card(
        color: Colors.white.withOpacity(0.7),
        child: Center(
          child: GestureDetector(
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black.withOpacity(0.8),
              child: Transform.rotate(
                angle: rotationAngle,
                child: Icon(
                  Icons.wb_sunny,
                  size: 124,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      )),
    );
  }
}
