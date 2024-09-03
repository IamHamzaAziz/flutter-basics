import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splash_screen/signup_screen.dart';

class TeacherScreen extends StatefulWidget {
  const TeacherScreen({super.key});

  @override
  State<TeacherScreen> createState() => _TeacherScreenState();
}

class _TeacherScreenState extends State<TeacherScreen> {
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
        title: Text('Teacher Screen', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.grey.shade800,
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

            Text('You are a teacher.', textAlign: TextAlign.center,),

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

