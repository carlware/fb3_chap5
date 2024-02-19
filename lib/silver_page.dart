import 'package:flutter/material.dart';

class SliverPage extends StatelessWidget {
  const SliverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 100.0,
            floating: true,
            flexibleSpace: const FlexibleSpaceBar( title: Text('Flexible part'),),
            actions: [
              IconButton(
                icon: const Icon(Icons.delete),
                tooltip: 'Example button',
                onPressed: () {},
              ),
            ],
          ),
          SliverFixedExtentList(
            itemExtent: 100.0,
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(color: index.isEven ? Colors.red : Colors.black,);
              },
              childCount: 8,
            ),
          ),
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: const Text("Next"),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}