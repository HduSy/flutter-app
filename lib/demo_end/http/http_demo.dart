import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class HttpDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('HttpDemo'),
      ),
      body: HttpDemoHome(),
    );
  }
}

class HttpDemoHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HttpDemoHomeState();
  }
}

class HttpDemoHomeState extends State<HttpDemoHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
    final post = {
      'title': 'Machine Learning',
      'author':'Zhihua Zhou'
    };
    print(post['title']);
    print(post['author']);
    final postJson = json.encode(post);
    print(postJson);
    final postJsonConverted = json.decode(postJson);
    print(postJsonConverted['title']);
    print(postJsonConverted['author']);
    final postModel = Post.fromJson(postJsonConverted);
    print('title: ${postModel.title},author: ${postModel.author}');
    print('${json.encode(postModel)}');
  }

  fetchData() async {
    final res = await http.get('https://resources.ninghao.net/demo/posts.json');
    print('status code: ${res.statusCode}');
//    print('res body: ${res.body}');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container();
  }
}

class Post{
  final String title;
  final String author;
  Post(this.title,this.author);
  Post.fromJson(Map json):title=json['title'],author=json['author']; // 同样是构造函数
  Map toJson()=>{
    'title':title,
    'author':author
  };
}