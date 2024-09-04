import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              // MyButton(),
              MyButton(title: 'Login',),
              MyButton(title: 'Signup',),
            ],
          )
    ));
  }
}

class MyButton extends StatelessWidget {
  final String title;
  // const MyButton({super.key, required this.title});
  const MyButton({super.key, this.title = 'Click Me'});   // Default title value  after removing required keyword

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Center(
        child: Container(
          height: 60,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.deepOrange,
          ),
          child: Center(
            // child: Text(
            //   'Click me',
            //   style: TextStyle(fontSize: 20, color: Colors.white),
            // ),
            child: Text(
              title,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

