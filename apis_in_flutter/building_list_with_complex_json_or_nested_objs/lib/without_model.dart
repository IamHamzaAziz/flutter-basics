import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WithoutModel extends StatefulWidget {
  const WithoutModel({super.key});

  @override
  State<WithoutModel> createState() => _WithoutModelState();
}

class _WithoutModelState extends State<WithoutModel> {
  var data;

  Future<void> getUsers () async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      data = jsonDecode(response.body.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Without Model'),
      ),
      body: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: getUsers(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.black,
                      )
                    );
                  }
                  else {
                    return ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  ResuableRow(title: 'Name', value: data[index]['name'].toString()),
                                  ResuableRow(title: 'Email', value: data[index]['email'].toString()),
                                  ResuableRow(title: 'Address - City', value: data[index]['address']['city'].toString()),
                                  ResuableRow(title: 'Address - City - LAT', value: data[index]['address']['geo']['lat'].toString()),
                                  ResuableRow(title: 'Address - City - LNG', value: data[index]['address']['geo']['lng'].toString()),
                                ],
                              ),
                            ),
                          ),
                        );
                        //   ListTile(
                        //   title: Text('Name: ${data[index]['name']}'),
                        //   subtitle: Text('Address City: ${data[index]['address']['city']}'),
                        // );
                      },
                    );
                  }
                }
              ),
            )
          ],
        )
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


