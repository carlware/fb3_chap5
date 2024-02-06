
import 'package:flutter/material.dart';

class DestinationWidget extends StatefulWidget {
  final String destinationName;

  const DestinationWidget({super.key, required this.destinationName});

  @override
  State<StatefulWidget> createState() => _DestinationWidget();
}

class _DestinationWidget extends State<DestinationWidget> {
  late int _counter;

  @override
  void initState() {
    super.initState();
    _counter = 0;
  }

  @override
  void dispose() {
    super.dispose();
    if (mounted) {
      print("is mounted");
    }
    print("dispose called");
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(widget.destinationName),
        Column(
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    _counter++;
                  });
                },
                icon: const Icon(Icons.thumb_up),
            ),
            Text("$_counter")
          ],
        )
      ],
    );
  }
  

}
