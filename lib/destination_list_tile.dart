
import 'package:flutter/material.dart';

class DestinationListTile extends StatelessWidget {
  const DestinationListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List View"),),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Teesside"),
            subtitle: const Text("The home of the Lemon Top ice cream"),
            leading: const Icon(Icons.location_on),
            onTap: () {},
            trailing: IconButton(
              icon: const Icon(Icons.thumb_up),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
