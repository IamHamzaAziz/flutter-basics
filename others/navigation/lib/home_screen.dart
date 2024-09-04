import 'package:flutter/material.dart';
import 'package:navigation/screen_two.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
          backgroundColor: Colors.teal,
        ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,

            children: [
              // DrawerHeader(child: Text('Drawer Header'))

              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.teal
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/7255383/pexels-photo-7255383.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
                accountName: Text('John Doe'),
                accountEmail: Text('john@doe.com')
              ),

              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: (){
                  Navigator.pushNamed(context, HomeScreen.id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.sailing),
                title: const Text('Screen Two'),
                onTap: (){
                  Navigator.pushNamed(context, ScreenTwo.id);
                },
              ),
            ],
          ),
        ),

        body: Center(
          child: TextButton(
            onPressed: (){
              // If we are using routes and initial route in main file then we will use pushNamed
              Navigator.pushNamed(context, ScreenTwo.id);

              // Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTwo()));
            },
            child: const Text('Go to Screen Two')
          ),
        ),
      )
    );
  }
}

