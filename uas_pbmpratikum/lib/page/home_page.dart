import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:uas_pbmpratikum/page/detail_page.dart';

class HomePage extends StatefulWidget {
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
        backgroundColor: Color.fromARGB(255, 68, 88, 118),
        appBar: AppBar(
          leading: const Icon(
            Icons.menu_book_sharp,
            color: Color.fromARGB(255, 100, 132, 181),
          ),
          flexibleSpace: Container(
              decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 100, 132, 181),
                spreadRadius: 10,
                blurRadius: 8,
              )
            ],
          )),
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          title: Row(
            children: const <Widget>[
              Text(
                "RUMPI YUUK",
                style: TextStyle(
                  color: Color.fromARGB(255, 100, 132, 181),
                  fontSize: 20,
                ),
              )
            ],
          ),
          elevation: 0.0,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: ListView.builder(
                itemCount: _posts.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 16.0,
                    child: ListTile(
                      leading: Container(
                        color: Color.fromARGB(255, 68, 88, 118),
                        height: 60,
                        width: 80,
                        child: _posts[index]['urlToImage'] != null
                            ? Image.network(
                                _posts[index]['urlToImage'],
                                width: 150,
                                fit: BoxFit.cover,
                              )
                            : Center(),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          '${_posts[index]['title']}',
                          maxLines: 8,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Color.fromARGB(255, 100, 132, 181)),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          '${_posts[index]['description']}',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Color.fromARGB(255, 100, 132, 181)),
                        ),
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
                }),
          ),
        ));
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
