import 'package:flutter/material.dart';
import 'dart:math' as math;

class RotatedButton extends StatelessWidget {
  const RotatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Rotated button example")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Original button"),
                onPressed: () {},
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              Transform.scale(
                scale: 2.0,
                child: ElevatedButton(
                  child: Text("Rotated button"),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ));
  }
}
