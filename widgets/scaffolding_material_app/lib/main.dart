import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       // backgroundColor: Colors.blueGrey,
//       backgroundColor: Colors.blueGrey.shade600,  // For shade we cannot use cont before MaterialApp
//       appBar: AppBar(
//         title: const Text('Material App Bar'),     // If const is used before MaterialApp then there is no need to use it here
//         backgroundColor: Colors.blue.shade200,
//       ),
//       body: const Center(     // If const is used before MaterialApp then there is no need to use it here
//         child: Text('Welcome to the Material App Bar!'),
//       ),
//     )
//   ));
// }

void main() {
  runApp(MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.blueGrey,
        backgroundColor: Colors.blueGrey.shade600, // For shade we cannot use cont before MaterialApp
        appBar: AppBar(
          title: const Text(
              'Material App Bar'
          ), // If const is used before MaterialApp then there is no need to use it here
          backgroundColor: Colors.blue.shade200,
        ),
        body: const Center(
            // If const is used before MaterialApp then there is no need to use it here
            child: Image(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU4qrCnegX96pdMdn5zjC_TqrDrKyUHNv7Gw&s'
                ))),
      )));
}
