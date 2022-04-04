import 'package:dart_std/dart_std.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _counter = 0;
  final List<int> intArray = [0, 1, 2, 3];
  static const Triple<int, bool, String> _triple = Triple(1, false, "Deb");
  final map = {"Deb": "Singha", "Ana": "Majumdar"};

  void _incrementCounter() {
    // debugPrint(2.toOrdinal());
    // debugPrint(0.isNull().toString());
    // debugPrint(intArray.lastIndex.toString());
    // debugPrint(intArray.elementAtOrNull(5).toString());
    // debugPrint(intArray.firstIndex.toString());
    // debugPrint(intArray.indices.toString());
    // debugPrint(intArray.drop(1).toString());
    // debugPrint(intArray.dropWhile((element) => element.isEven).toString());
    // debugPrint(intArray.dropLast(2).toString());
    // debugPrint(_triple.third.toString());
    // debugPrint(10.toLikes());
    // debugPrint(map.filter((entry) => entry.key == 'Deb').values.toString());
    debugPrint(20.divide(2.5).toString());
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
