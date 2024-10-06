import 'package:flutter/material.dart';

class CircularChart extends StatelessWidget {
  const CircularChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(aspectRatio: 1.0,
          child: Container(
          color: Colors.blue,
            margin: const EdgeInsets.all(20.0),
        ),),
      ),
    );
  }
}
