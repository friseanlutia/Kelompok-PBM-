import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tugas_pratikum8dan9/palatte.dart';
import 'package:tugas_pratikum8dan9/ui/detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _posts = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.newspaper),
          toolbarHeight: 70,
          backgroundColor: Colors.black,
          title: Text(
            'NEWS',
            style: kBodyText,
          ),
        ),
        body: ListView.builder(
            itemCount: _posts.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 20.0,
                child: ListTile(
                  leading: Container(
                    color: Colors.black,
                    height: 300,
                    width: 100,
                    child: _posts[index]['urlToImage'] != null
                        ? Image.network(
                            _posts[index]['urlToImage'],
                            width: 100,
                            fit: BoxFit.cover,
                          )
                        : Center(),
                  ),
                  title: Text(
                    '${_posts[index]['title']}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    '${_posts[index]['description']}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (c) => DetailPage(
                                  url: _posts[index]['url'],
                                  title: _posts[index]['title'],
                                  content: _posts[index]['content'],
                                  publishedAt: _posts[index]['publishedAt'],
                                  author: _posts[index]['author'],
                                  urlToImage: _posts[index]['urlToImage'],
                                )));
                  },
                ),
              );
            }));
  }

  Future _getData() async {
    try {
      final response = await http.get(Uri.parse(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=052fa3774c8d4c26bc3b5928238b699b"));
      if (response.statusCode == 200) {
        print(response.body);
        final data = jsonDecode(response.body);
        setState(() {
          _posts = data['articles'];
        });
      }
    } catch (e) {
      print(e);
    }
  }
}
