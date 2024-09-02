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
          child: Container(
            height: 200,
            width: 200,

            // transform: Matrix4.rotationZ(0.2),

            padding: const EdgeInsets.all(20),
            // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            // padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),

            margin: const EdgeInsets.all(20),
            // margin: EdgeInsets.only(left: 100, right: 10, top: 10, bottom:10),

            decoration: BoxDecoration(
              color: Colors.blue,
              
              // borderRadius: BorderRadius.circular(100),   // 100 will make it circle if container is square ot width is same as height
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(10)
              ),

              border: Border.all(color: Colors.red, width: 5),

              image: const DecorationImage(
                image: NetworkImage('https://images.pexels.com/photos/26653530/pexels-photo-26653530/free-photo-of-stars-streaks-over-snow-covered-mountain.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),

                // fit: BoxFit.fitHeight
                fit: BoxFit.cover
              ),

              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  spreadRadius: 10,
                  blurRadius: 1,
                ),
              ]
            ),

            child: const Center(
              child: Text(
                'Hello, World!',
              ),
            )
          ),
        ),
      )
    );
  }
}

