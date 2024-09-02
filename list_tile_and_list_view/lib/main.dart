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
          title: const Text('List View and List Tile'),
          backgroundColor: Colors.teal,
        ),
        body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index){
            return const Center(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/432059/pexels-photo-432059.jpeg?auto=compress&cs=tinysrgb&w=600'),
                ),
                title: Text('Hi there'),
                subtitle: Text('This is a list tile subtitle'),
                trailing: Text('3:00 pm'),
              ),
            );
          },
        )
      )
    );
  }
}

