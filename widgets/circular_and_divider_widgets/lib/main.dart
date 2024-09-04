import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Divider(color: Colors.black, thickness: 0.5,),
              SizedBox(
                height: 50,
                child: VerticalDivider(color: Colors.black, thickness: 2,),
              ),
              Divider(color: Colors.black, thickness: 0.5,),
              Center(
                child: CircleAvatar(
                  // radius: 50,
                  radius: 100,    // Reducing or increasing radius will also change the size
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}

