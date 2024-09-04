import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// We use stateful widgets when state of variable or anything changes and we want that change to be reflected
// This couldn't have been possible with stateless widgets
// It would update the variables but not display the changes

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateful Widget'),
        ),
        body: SafeArea(
          child: Center(
            child: Text(
              // x.toString()
              'Hello, State $x!',
              style: const TextStyle(fontSize: 20),
            ),
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Both x++ work fine, we do not comment out any then we will get increment of two
            x++;
            setState(() {
              // x++;
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

