
import 'package:flutter/material.dart';

class DestinationWidget extends StatelessWidget {
  final String destinationName;

  const DestinationWidget({super.key, required this.destinationName});

  @override
  Widget build(BuildContext context) {
    return Text(destinationName);
  }
}
