import 'package:fb3_chap5/silver_page.dart';
import 'package:flutter/material.dart';
import 'destination_list_tile.dart';
import 'destination_widget_container.dart';
import 'destination_widget_textstyle.dart';

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
        primarySwatch: Colors.blue,
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
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            IconButton(
              onPressed: () => _scaffoldKey.currentState!.closeDrawer(),
              icon: const Icon(Icons.close),
            ),
            TextButton(
              child: const Text("Whitby"),
              onPressed: () {},
            ),
            TextButton(
              child: const Text("Saltburn"),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              child: const Text('TextStyle'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return DestinationWidgetTextStyle(
                      name: "Whitby",
                      description: "Whitby is a town in the North East of England where Dracula first arrived, taking the form of a dog.",
                    );
                  }),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Container decoration'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return DestinationWidgetContainer(
                      name: "Saltburn",
                      description: "Saltburn-by-the-Sea, normally referred to as Saltburn, is the North East's best known location for surfing.",
                    );
                  }),
                );
              },
            ),
            ElevatedButton(
              onPressed: () => _scaffoldKey.currentState!.openDrawer(),
              child: const Text("Open drawer"),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('The par-mo is a famous food of Tees-side.'),
                  ),
                );
              },
              child: const Text('Show SnackBar'),
            ),
            ElevatedButton(
              child: const Text('List view'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const DestinationListTile();
                  }),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Sliver page'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const SliverPage();
                  }),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
