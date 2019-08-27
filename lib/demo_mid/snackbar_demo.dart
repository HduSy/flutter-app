import 'package:flutter/material.dart';

class SnackBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SnackBarDemoState();
  }
}

class SnackBarDemoState extends State<SnackBarDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('WidgetDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SnackBarButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SnackBarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FlatButton(
        onPressed: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('Processing...'),
            action: SnackBarAction(label: 'Ok', onPressed: () {}),
          ));
        },
        child: Text('open SnackBar'));
  }
}
