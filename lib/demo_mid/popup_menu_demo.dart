import 'package:flutter/material.dart';

class PopupMenuDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PopupMenuDemoState();
  }
}

class PopupMenuDemoState extends State<PopupMenuDemo> {
  String _currentMenuItem = 'Home';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_currentMenuItem),
                PopupMenuButton(
                    onSelected: (value) {
                      debugPrint('selected menu: $value');
                      setState(() {
                        _currentMenuItem = value;
                      });
                    },
                    itemBuilder: (BuildContext context) => [
                          PopupMenuItem(
                            value: 'Home',
                            child: Text('Home'),
                          ),
                          PopupMenuItem(
                            value: 'Discover',
                            child: Text('Discover'),
                          ),
                          PopupMenuItem(
                            value: 'Community',
                            child: Text('Community'),
                          )
                        ])
              ],
            )
          ],
        ),
      ),
    );
  }
}
