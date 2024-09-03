import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splash_screen/home_screen.dart';
import 'package:splash_screen/login_screen.dart';
import 'package:splash_screen/signup_screen.dart';
import 'package:splash_screen/student_screen.dart';
import 'package:splash_screen/teacher_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    isLogin();
  }

  void isLogin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool isLoggedIn = sp.getBool('isLoggedIn') ?? false;
    String type = sp.getString('userType') ?? '';


    // if (!isLoggedIn) {
    //   Timer(const Duration(seconds: 5), (){
    //     Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
    //   });
    // }

    if (!isLoggedIn) {
      Timer(Duration(seconds: 5), (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
      });
    } else if (type == 'student') {
      Timer(Duration(seconds: 5), (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => StudentScreen()));
      });
    } else if (type == 'teacher') {
      Timer(Duration(seconds: 5), (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => TeacherScreen()));
      });
    }

    Timer(Duration(seconds: 5), (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Image(
          height: double.infinity,
          fit: BoxFit.fitHeight,
          image: NetworkImage('https://images.pexels.com/photos/27015906/pexels-photo-27015906/free-photo-of-a-turtle-in-water.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
      )
    );
  }
}
