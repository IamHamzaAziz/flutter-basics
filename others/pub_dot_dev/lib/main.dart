import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:readmore/readmore.dart';
import 'package:badges/badges.dart';

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
          title: const Text('Understanding pub.dev'),
          backgroundColor: Colors.teal,
        ),

        // This widget helps to make screen scrollable
        body:Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon(Icons.home),   // Android Icon
                // Icon(CupertinoIcons.home),   // Icon for ios
                // Icon(FontAwesomeIcons.camera)   // Font Awesome icons which we added after installing dependency

                // ReadMoreText(
                //    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                //    trimLines: 2,
                //    trimMode: TrimMode.Line,
                //    trimCollapsedText: 'Show more',
                //    trimExpandedText: 'Show less',
                //    moreStyle: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),  // Style of show more text
                //    lessStyle: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                // )

                Center(
                  // child: AnimatedTextKit(
                  //   animatedTexts: [
                  //     RotateAnimatedText('Hi There', textStyle: TextStyle(fontSize: 50))
                  //   ],
                  //   totalRepeatCount: 10,
                  //
                  // )

                  child: PinCodeTextField(
                    appContext: context,
                    length: 4,
                    keyboardType: TextInputType.number,

                    obscureText: true,    // Do not show the pin code being typed
                    obscuringCharacter: '*',    // If it is not provided then dot is used by default

                    cursorColor: Colors.teal,

                    pinTheme: PinTheme(
                      // shape: PinCodeFieldShape.circle
                      shape: PinCodeFieldShape.box,
                      activeColor: Colors.green,
                      inactiveColor: Colors.grey,
                      selectedColor: Colors.red,
                      fieldWidth: 50,
                      fieldHeight: 60,
                    ),
                    onChanged: (value){

                    },
                  ),
                )
              ],
          ),
        ),
      ),
    );
  }
}

