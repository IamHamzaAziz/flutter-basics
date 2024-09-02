import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash_screen/home_screen.dart';
import 'package:splash_screen/login_screen.dart';

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

    Timer(Duration(seconds: 5), (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
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
