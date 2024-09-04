import 'package:flutter/material.dart';
import 'dart:math';   // Importing this library to generate random numbers

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // To use this we need to import math library first
  Random random = Random();

  int x = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lottery App', style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue.shade600,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text('Lottery Number: 5')
            ),
            const SizedBox(height: 10),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2, color: Colors.black),
                color: Colors.grey.shade200,
              ),

              // We can also have x == 5 ? : here at child: Column where we can show one column if condition is true and other if it is false (both have wrong and correct guess texts and icons respectively)
              // We can also use this ternary operator anywhere such as in height of container
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  x == 5 ? const Icon(Icons.done_all, color: Colors.green,) : const Icon(Icons.error, color: Colors.red),
                  const SizedBox(height: 5),
                  Center(
                    child: Text(
                      x == 5 ? 'Correct Guess: $x' : 'Wrong Guess: $x',
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              x = random.nextInt(10);
              setState(() {});
            },
            child: const Icon(Icons.refresh),
        )
      ),
    );
  }
}

