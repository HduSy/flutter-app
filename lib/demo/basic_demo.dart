import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(fontSize: 16.0);
  final String _author = '李白';
  final String _title = '将进酒';

  @override
  Widget build(BuildContext context) {
//    行内多样式文字
    // TODO: implement build
    return RichText(
      text: TextSpan(
          text: '《$_title》 -  $_author',
          style: TextStyle(
              fontSize: 17.0,
              fontStyle: FontStyle.italic,
              color: Colors.deepPurple),
          children: [
            TextSpan(
                text: '.net',
                style: TextStyle(
                    fontSize: 14.0,
                    fontStyle: FontStyle.normal,
                    color: Colors.grey))
          ]),
    );
  }
}
