import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp2());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('Row Widget'),
        ),
        body: SafeArea(
          child: Row(
            // Here it is x axis
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red.shade300,
                child: const Text('Text 1'),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue.shade300,
                child: const Center(child: Text('Text 2')),
              )
            ],
          ),
        ),
      ),
    );
  }
}


// Below widget will include both rows and columns

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('Row and Column Widget'),
        ),
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,  // y axis
              crossAxisAlignment: CrossAxisAlignment.center,  // x axis
              // crossAxisAlignment: CrossAxisAlignment.end,  // x axis
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Hamzee'),
                    Icon(Icons.ice_skating_outlined),
                    Text('Bhatti')
                  ],
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green.shade300,
                  child: const Center(child: Text('Text 1')),
                )
              ],
            )
        ),
      ),
    );
  }
}




