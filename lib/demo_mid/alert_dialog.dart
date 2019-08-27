import 'package:flutter/material.dart';

enum Action { Cancel, Ok }

class AlertDialogDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AlertDialogDemoState();
  }
}

class AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choice = 'Nothing';

  _openAlertDialog() async {
    final choice = await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alert Dialog Demo'),
            content: Text('Are you sure about this?'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context, Action.Cancel);
                  },
                  child: Text('Cancel')),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context, Action.Ok);
                  },
                  child: Text('Ok'))
            ],
          );
        });
    switch (choice) {
      case Action.Cancel:
        setState(() {
          _choice = 'Cancel';
        });
        break;
      case Action.Ok:
        setState(() {
          _choice = 'Ok';
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialogDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Your choice is $_choice'),
            SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                    child: Text('Open AlertDialog'),
                    onPressed: _openAlertDialog)
              ],
            )
          ],
        ),
      ),
    );
  }
}
