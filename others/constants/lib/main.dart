import 'package:constants/contant.dart';
import 'package:flutter/material.dart';

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
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Text('Hamza', style: TextStyle(color: greyColor),), // These constants are coming from the constant.dart file
              const Text('Aziz', style: TextStyle(color: blueColor),),
              Text('Bhatti', style: styling)
            ],
          ),  
        )
      ),
    );
  }
}

