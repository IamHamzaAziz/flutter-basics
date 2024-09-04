import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue.shade400,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: const Text('Welcome to the App'),
      ),
      body: const Center(
        child: Image(
            // First add assets folder or directory in project and then image in it
            // Then uncomment the assets part in pubspec.yaml file and specify folder below (keep in view indentation)
            // Then specify image we want to use in that folder in below code
            image: AssetImage('assets/girl-img.jpg') 
        ),
      ),
    ),
  ));
}

