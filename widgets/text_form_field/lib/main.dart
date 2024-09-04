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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              // keyboardType: TextInputType.number,

              style: TextStyle(color: Colors.green.shade900),   // Color of input text by user

              decoration: InputDecoration(
                // labelText: 'Enter your email',
                // labelStyle: const TextStyle(color: Colors.black),
                hintText: 'Enter Email',
                // hintStyle: TextStyle(color: Colors.green.shade200),
                
                filled: true,
                fillColor: Colors.grey.withOpacity(0.2),

                prefixIcon: const Icon(Icons.email),
                suffixIcon: const Icon(Icons.send),

                // When input field is not focused
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.blue, width: 2),
                ),

                // When input field is focused
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue.shade900, width: 1),
                ),

                // When there is any error
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.red, width: 1),
                )
              ),

              onChanged: (value) {
                // Handle user input
                // print(value)
              },
            ),
          ),
        ),
      ),
    );
  }
}

