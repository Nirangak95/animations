import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnimatedOpacityPage extends StatefulWidget {
  const AnimatedOpacityPage({super.key});

  @override
  State<AnimatedOpacityPage> createState() => _AnimatedOpacityPageState();
}

class _AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  bool _opacity = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: _opacity ? 1 : 0,
                duration: const Duration(seconds: 2),
                child: Container(
                  color: Colors.blue,
                  width: 250,
                  height: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Animated Opacity',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Click the play button'),
                  IconButton(
                      color: Colors.red,
                      onPressed: (() {
                        setState(() {
                          _opacity = !_opacity;
                        });
                      }),
                      icon: Icon(Icons.play_arrow)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
