import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue.shade300,
            child: const Center(
              child: Text(
                'Hello, World!',
                // Font family name should be same as mentioned in 'pubspec.yaml' file
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Matemasie',
                  fontWeight: FontWeight.bold,
                  // letterSpacing: 5,
                  color: Colors.white,
                  // decoration: TextDecoration.underline,


                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
