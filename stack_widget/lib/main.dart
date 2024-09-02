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
        appBar: AppBar(
          title: const Text('Stack Widgets'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Stack(
                children: [
                  Container(
                    width: 140,
                    height: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  )
                ],
              )
            ),

            SizedBox(
              child: Stack(
                children: [
                  Container(
                    width: 140,
                    height: 100,
                    color: Colors.yellow,
                  ),
                  const Positioned(
                    bottom: 10,   // positions from bottom
                    child: Text(
                      'Hello World'
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

