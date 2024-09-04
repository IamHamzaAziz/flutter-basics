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
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 150,
                  color: Colors.blue,
                  child: const Center(
                    child: Text('C1'),
                  ),
                )
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 150,
                  color: Colors.green,
                  child: const Center(
                    child: Text('C1'),
                  ),
                )
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 150,
                  color: Colors.yellow,
                  child: const Center(
                    child: Text('C1'),
                  ),
                )
              ),

              // Here the sum of all flex values is 6
              // So for first flex 2 means give it 2/6 width, for second flex: 3 means give it 3/6 and for thord flex: 1 means give it 1/6
              // To give all equal width, do not mention flex values or give each equal values

              // Expanded can be used similarly in columns, however there flex will adjust the heights
            ],
          ),
        ),
      )
    );
  }
}

