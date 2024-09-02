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
          child: RichText(
            text: const TextSpan(
              text: 'Hello, ',
              style: TextStyle(color: Colors.red),  // Style of this will apply to children as well (however children styling remains to them only)
              children: [
                TextSpan(text: 'World!', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 32)),
                TextSpan(text:' (I am RichText)', style: TextStyle(fontStyle: FontStyle.italic, color: Colors.blue))
              ],
            )
          ),
        ),
      )
    );
  }
}


