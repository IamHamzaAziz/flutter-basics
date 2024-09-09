import 'dart:convert';
// import 'dart:js_interop';

import 'package:building_list_with_complex_json_or_nested_objs/user_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<UserModel> usersList = [];
  
  Future<List<UserModel>> getUsers () async {
    try {
      final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
      var data = jsonDecode(response.body.toString());

      if (response.statusCode == 200) {
        for (Map i in data) {
          usersList.add(UserModel.fromJson(i));
        }
      }
    } catch (e) {
      print("Error: " + e.toString());
    }
    
    return usersList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen')
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getUsers(),
              builder: (context, AsyncSnapshot<List<UserModel>> snapshot) {
                // if (!snapshot.hasData) {
                //   CircularProgressIndicator();
                // }
                // else {
                  return ListView.builder(
                      itemCount: usersList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  // Text(snapshot.data![index].name.toString())
                                  ResuableRow(title: "Name: ", value: snapshot.data![index].name.toString()),
                                  ResuableRow(title: "Username: ", value: snapshot.data![index].username.toString()),
                                  ResuableRow(title: "Email: ", value: snapshot.data![index].email.toString()),
                                  ResuableRow(title: "Address City: ", value: snapshot.data![index].address!.city.toString()),
                                  ResuableRow(title: "Address LAT / LNG: ", value: snapshot.data![index].address!.geo!.lat.toString() + " / " + snapshot.data![index].address!.geo!.lng.toString()),
                                  ResuableRow(title: "Phone: ", value: snapshot.data![index].phone.toString()),
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                // }
              }
            )
          )
        ],
      ),
    );
  }
}

class ResuableRow extends StatelessWidget {
  final String title, value;
  const ResuableRow({Key? key, required this.title, required this.value}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title.toString()),
        SizedBox(width: 8),
        Text(value.toString())
      ],
    );
  }
}


