import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  // printWithDelay();
                },
                child: Container(
                  height: 50,
                  // color: Colors.blue.shade800,
                  child: Center(
                    child: Text('Login', style: TextStyle(color: Colors.white),),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue.shade800,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Future<void> printWithDelay() async {
  //   await Future.delayed(Duration(seconds: 5));
  //
  //   print('Hi there');
  // }
}
