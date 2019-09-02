import 'package:flutter/material.dart';

class TipRoute extends StatelessWidget {
  TipRoute({Key key, @required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Tip&提示'),
        ),
        body: Padding(
          padding: EdgeInsets.all(18),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(text),
                RaisedButton(
                  child: Text('返回'),
                  onPressed: () {
                    Navigator.pop(context, 'result = 我是tip_route返回值');
                  },
                )
              ],
            ),
          ),
        ));
  }
}
