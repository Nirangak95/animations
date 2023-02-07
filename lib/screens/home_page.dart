import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('animationController');
                },
                child: const Text("Animation Controller ")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('hero');
                },
                child: Hero(
                  tag: "tag-1",
                  child: Text("Hero Animation"),
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('animatedOpacity');
                },
                child: Text("Animated Opacity")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('animatedBuilder');
                },
                child: Text("Animated Builder")),
            AnimatedCrossFade(
              firstChild: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  setState(() {
                    _bool = !_bool;
                  });
                },
                child: Text("Animated Widget"),
              ),
              secondChild: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  setState(() {
                    _bool = !_bool;
                  });
                },
                child: Text("Animated Widget"),
              ),
              crossFadeState:
                  _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: Duration(seconds: 2),
            ),
          ],
        ),
      )),
    );
  }
}
