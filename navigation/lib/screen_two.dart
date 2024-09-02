import 'package:flutter/material.dart';
import 'package:navigation/home_screen.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = "screen_two";
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Screen Two'),
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
                  Navigator.pushNamed(context, HomeScreen.id);

                  // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: const Text('Go to Home Screen')
            ),
          ),
        )
    );
  }
}
