import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppThree());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.blue.shade900,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade400,
          title: const Text('Column with Texts'),
        ),
        body: const Column(
          children: [
            Text('Text1'),
            Text('Text2'),
            Text('Text3'),
            Text('Text4'),
            Text('Text5'),
          ],
        ),
      ),
    );
  }
}

class MyAppTwo extends StatelessWidget {
  const MyAppTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Column with Center Text'),
        ),
        body: const Column(
          children: [
          // Since first element is in center now others will be in center as well
          Center(child: Text('Text1')),
          Text('Text2'),
          Text('Text3'),
          Text('Text4'),
          Text('Text5'),
        ],
      ),
    ));
  }
}

class MyAppThree extends StatelessWidget {
  const MyAppThree({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal,
              title: const Text('Columns with Containers'),
            ),
            // SafeArea widget tells that do not go to ends of screen and fill the only necessary area
            body: SafeArea(
              child: Column(
                // Main Axis is y axis

                // mainAxisAlignment: MainAxisAlignment.end,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisAlignment: MainAxisAlignment.center,

                // It is x axis alignment (only works within width of Container)
                crossAxisAlignment: CrossAxisAlignment.end,

                children: [
                  const Text('Start Text'),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.grey.shade400,
                    child: const Center(
                      child: Text('Text1'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.grey.shade400,
                    child: const Center(
                      child: Text('Text2'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.grey.shade400,
                    child: const Center(
                      child: Text('Text3'),
                    ),
                  ),
                ],
              ),
            )));
  }
}
