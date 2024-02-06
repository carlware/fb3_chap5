
import 'package:flutter/material.dart';

class DestinationLike  extends StatefulWidget {
  const DestinationLike({Key? key}): super(key: key);

  @override
  State<DestinationLike> createState() => _DestinationLikeState();

}

class _DestinationLikeState extends State<DestinationLike> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: (DragStartDetails details) {
        setState(() {
          _counter++;
        });
      },
      onHorizontalDragEnd: (DragEndDetails details) {
        setState(() {
          _counter += 10;
        });
      },
      child: Container(
        color: Colors.grey,
        child: Text(
          "Like Count: $_counter"
        ),
      ),
    );
  }
}