import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splash_screen/home_screen.dart';
import 'package:splash_screen/student_screen.dart';
import 'package:splash_screen/teacher_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final ageController = TextEditingController();
  final userTypeController = TextEditingController();
  String type = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup Screen', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        centerTitle: true,
        automaticallyImplyLeading: false, // To not get back arrow
        backgroundColor: Colors.deepOrange.shade800,
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
                height: 10,
              ),

              // Create a dropdown menu which has three user types, student, teacher and admin\
              DropdownMenu(
                onSelected: (value){
                  userTypeController.text = value ?? "";
                  type = value ?? "";
                  setState(() {});
                },
                label: const Text('Select Role'),
                width: double.infinity,
                dropdownMenuEntries: const <DropdownMenuEntry<String>>[
                  DropdownMenuEntry(value: 'student', label: 'Student'),
                  DropdownMenuEntry(value: 'teacher', label: 'Teacher'),
                  // DropdownMenuEntry(value: 'admin', label: 'Admin'),
                ]
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

                  // sp.setString('userType', type);
                  sp.setString('userType', userTypeController.text.toString());
                  sp.setBool('isLoggedIn', true);

                  if (emailController.text == '' || passwordController.text == '' || ageController.text == '' || userTypeController.text == '') {
                    showDialog(
                      context: context,
                      builder: (context) => const AlertDialog(
                        title: Text('Error'),
                        content: Text('Please fill all fields'),
                        // icon: Icon(Icons.error),
                      ),
                    );
                    return;
                  }

                  if (sp.getString('userType') == 'student') {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => StudentScreen()));
                  } else if (sp.getString('userType') == 'teacher') {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TeacherScreen()));
                  }

                  // Navigate to HomeScreen()
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Container(
                  height: 50,
                  // color: Colors.blue.shade800,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepOrange.shade600,
                  ),
                  child: const Center(
                    child: Text('Signup', style: TextStyle(color: Colors.white),),
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
