import 'package:fb3_chap5/composed_button.dart';
import 'package:fb3_chap5/rotate_button.dart';
import 'package:fb3_chap5/rotation_button.dart';
import 'package:fb3_chap5/rotation_button_bouncein.dart';
import 'package:fb3_chap5/scaled_button.dart';
import 'package:fb3_chap5/translated_button.dart';
import 'package:flutter/material.dart';

import 'animated_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text('Rotated button'),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return RotatedButton();
                      }),
                    );
                  },
                ),
                ElevatedButton(
                  child: Text('Scaled button'),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return ScaledButton();
                      }),
                    );
                  },
                ),
                ElevatedButton(
                  child: Text('Translated button'),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return TranslatedButton();
                      }),
                    );
                  },
                ),
                ElevatedButton(
                  child: Text('composed button'),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return ComposedButton();
                      }),
                    );
                  },
                ),
                ElevatedButton(
                  child: Text('Animation button'),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return Scaffold(appBar: AppBar(), body: RotationAnimations());
                      }),
                    );
                  },
                ),
                ElevatedButton(
                  child: Text('Animation bounce in button'),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return Scaffold(appBar: AppBar(), body: RotationAnimationsBounceIn());
                      }),
                    );
                  },
                ),
                ElevatedButton(
                  child: Text('Animation bounce in button'),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return Scaffold(appBar: AppBar(), body: RotationBuilderAnimations());
                      }),
                    );
                  },
                ),
              ]
          ),
        ));
  }
}
