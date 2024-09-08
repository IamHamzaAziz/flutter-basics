import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:api_tutorial/models/post_model.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<PostModel> posts = [];
  Future<List<PostModel>> getPostApi () async {
    final res = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(res.body.toString());

    if (res.statusCode == 200) {
      posts.clear();  // So that when we do hot reload then same posts are not added and lenght does not change
      for(Map i in data) {
        posts.add(PostModel.fromJson(i));
      }
      return posts;
    }
    return posts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: getPostApi(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Text('Loading');
                  } else {
                    // return ListView.builder(
                    //   itemCount: posts.length,
                    //   itemBuilder: (context, index) {
                    //     return ListTile(
                    //       title: Text(posts[index].title.toString()),
                    //       subtitle: Text(posts[index].body.toString()),
                    //     );
                    //   },
                    // );

                    return ListView.builder(
                      itemCount: posts.length,
                      itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Title', style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(posts[index].title.toString()),
                              SizedBox(height: 10,),
                              Text('Body', style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(posts[index].body.toString()),
                            ],
                          ),
                        ),
                      );
                     }
                    );
                  }
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}
