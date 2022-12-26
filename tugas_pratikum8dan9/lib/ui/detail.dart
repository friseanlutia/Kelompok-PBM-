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
      body: Column(
        children: <Widget>[
          urlToImage != null
              ? Image.network(urlToImage)
              : Container(
                  height: 500,
                  color: Colors.black,
                ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: <Widget>[
                Text(
                  '$title',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  '$publishedAt',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  '$content',
                  style: TextStyle(fontSize: 18),
                ),
                Divider(),
                Text(
                  'Author : $author',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Sumber : $url',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.close,),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
