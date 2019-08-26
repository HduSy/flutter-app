import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/demo_mid/button_demo.dart';
import 'package:flutter_app/demo_mid/floating_action_button.dart';
import 'package:flutter_app/demo_mid/popup_menu_demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: 'FloatingActionButton',
            page: FloatingActionButtonDemo(),
          ),
          ListItem(
            title: 'ButtonDemo',
            page: ButtonDemo(),
          ),
          ListItem(
            title: 'PopupMenuDemo',
            page: PopupMenuDemo(),
          )
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}

class WidgetDemo extends StatelessWidget {
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
              children: <Widget>[],
            )
          ],
        ),
      ),
    );
  }
}
