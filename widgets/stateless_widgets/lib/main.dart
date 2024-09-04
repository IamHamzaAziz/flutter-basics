import 'package:flutter/material.dart';

void main() {
  runApp(const MySecondApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateless Widget'),
          backgroundColor: Colors.blue.shade900,
        ),
        backgroundColor: Colors.blue.shade600,
        body: const Center(
          child: Text('Hello'),
        ),
      ),
    );
  }
}

class MySecondApp extends StatelessWidget {
  const MySecondApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateful Widget'),
          backgroundColor: Colors.blue.shade900,
        ),
        backgroundColor: Colors.blue.shade600,
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.red.shade300,
            child: const Center(
              child: Text('Hello'),
            ),
          )
        ),
      ),
    );
  }
}


