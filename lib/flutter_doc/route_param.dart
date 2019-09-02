import 'package:flutter/material.dart';

class RouteParamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var params = ModalRoute.of(context).settings.arguments;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('路由传参'),
      ),
      body: Container(
        child: Center(
          child: Text(params,style: TextStyle(
            fontSize: 23.0
          ),),
        ),
      ),
    );
  }
}
