import 'package:flutter/material.dart';

class AnimationUI extends StatefulWidget {
  const AnimationUI({Key? key}) : super(key: key);

  @override
  State<AnimationUI> createState() => _AnimationUIState();
}

class _AnimationUIState extends State<AnimationUI> {
  bool showAnimation = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          child: AnimatedContainer(
            height: showAnimation ? 200 : 100,
            width: showAnimation ? 200 : 100,

            // ignore: prefer_const_constructors
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
            duration: const Duration(milliseconds: 785),
          ),
          onTap: () {
            setState(() {
              showAnimation = !showAnimation;
            });
          },
        ),
      ),
    );
  }
}
