import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splash_screen/login_screen.dart';
import 'package:splash_screen/signup_screen.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({super.key});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  String email = '', age = '', type = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadData();
  }

  loadData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    email = sp.getString('email') ?? '';
    age = sp.getString('age') ?? '';
    type = sp.getString('userType') ?? '';

    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Screen', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blue.shade800,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Email: $email'),
            SizedBox(
              height: 10,
            ),

            Text('Age: $age'),

            SizedBox(
              height: 30,
            ),

            Text('You are a student and you will take 4 lectures daily.', textAlign: TextAlign.center,),

            SizedBox(
              height: 20,
            ),

            InkWell(
              onTap: ()async{
                // printWithDelay();

                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.clear(); // Clear all data in the shared preferences sp

                // Navigate to HomeScreen()
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));

              },
              child: Container(
                height: 50,
                // color: Colors.blue.shade800,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red.shade700,
                ),
                child: const Center(
                  child: Text('Logout', style: TextStyle(color: Colors.white),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

