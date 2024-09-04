import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splash_screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        centerTitle: true,
        automaticallyImplyLeading: false, // To not get back arrow
        backgroundColor: Colors.blue.shade900,
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              TextFormField(
                controller: passwordController,
                obscureText: true, // To hide password
                decoration: const InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              TextFormField(
                controller: ageController,
                keyboardType: TextInputType.number, // To restrict input to numbers only
                decoration: const InputDecoration(
                  hintText: 'Age',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              InkWell(
                onTap: ()async{
                  // printWithDelay();

                  SharedPreferences sp = await SharedPreferences.getInstance();
                  // sp.setString('name', 'hamzee');
                  // sp.setInt('age', 21);
                  //
                  // print(sp.getString('name'));
                  // sp.remove('name');

                  sp.setString('email', emailController.text.toString());
                  sp.setString('password', passwordController.text.toString());
                  sp.setString('age', ageController.text.toString());
                  sp.setBool('isLoggedIn', true);

                  // Navigate to HomeScreen()
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));

                },
                child: Container(
                  height: 50,
                  // color: Colors.blue.shade800,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue.shade800,
                  ),
                  child: const Center(
                    child: Text('Login', style: TextStyle(color: Colors.white),),
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
