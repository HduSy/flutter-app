import 'package:flutter/material.dart';
import 'dart:async';

enum Options { A, B, C }

class SimpleDialogDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SimpleDialogDemoState();
  }
}

class SimpleDialogDemoState extends State<SimpleDialogDemo> {
  String _choice = 'Nothing';

  Future<void> _openSimpleDialog() async {
    final option = await showDialog(
        context: context,
        builder: (BuildContext contex) {
          return SimpleDialog(
            title: Text('SimpleDialog'),
            children: <Widget>[
              SimpleDialogOption(
                child: Text('Options A'),
                onPressed: () {
                  Navigator.pop(contex, Options.A);
                },
              ),
              SimpleDialogOption(
                child: Text('Options B'),
                onPressed: () {
                  Navigator.pop(contex, Options.B);
                },
              ),
              SimpleDialogOption(
                child: Text('Options C'),
                onPressed: () {
                  Navigator.pop(contex, Options.C);
                },
              )
            ],
          );
        });
    switch (option) {
      case Options.A:
        setState(() {
          _choice = 'A';
        });
        break;
      case Options.B:
        setState(() {
          _choice = 'B';
        });
        break;
      case Options.C:
        setState(() {
          _choice = 'C';
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleDialogDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Your choice is $_choice'),
            SizedBox(height: 16.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
            FloatingActionButton(
              child: Icon(Icons.perm_media),
              onPressed: _openSimpleDialog,
            )
          ],
        ),
      ),
    );
  }
}
