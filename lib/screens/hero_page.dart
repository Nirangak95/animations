import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Container(
        child: Center(
          child: Hero(
              tag: "tag-1",
              child: Container(
                color: Colors.amber,
                width: 250,
                height: 250,
              )),
        ),
      )),
    );
  }
}
