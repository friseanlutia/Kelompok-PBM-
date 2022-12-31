import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final url;
  final title;
  final content;
  final publishedAt;
  final author;
  final urlToImage;

  DetailPage(
      {this.url,
      this.title,
      this.content,
      this.publishedAt,
      this.author,
      this.urlToImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 68, 88, 118),
      body: Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              urlToImage != null
                  ? Image.network(urlToImage)
                  : Container(
                      height: 500,
                      color: Color.fromARGB(255, 68, 88, 118),
                    ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Publish : $publishedAt',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 68, 88, 118)),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      '$title',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 68, 88, 118)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '$content',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 68, 88, 118)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Sumber : $url',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 68, 88, 118)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Author : $author',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 68, 88, 118)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.close_rounded,
          size: 40,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        onPressed: () => Navigator.pop(context),
        backgroundColor: Color.fromARGB(255, 68, 88, 118),
      ),
    );
  }
}
