import 'package:flutter/material.dart';

class ListTileDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListTileDemoState();
  }
}

class ListTileDemoState extends State<ListTileDemo> {
  bool _checkboxItemA = false;
  int _groupVal = 0;
  bool _switchItemValA = false;

  void _handleRadioValChanged(int value) {
    setState(() {
      _groupVal = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTileDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              value: _checkboxItemA,
              onChanged: (value) {
                setState(() {
                  _checkboxItemA = value;
                });
              },
              title: Text('CheckBoxItem A'),
              subtitle: Text('description...'),
              secondary: Icon(Icons.bookmark),
              selected: _checkboxItemA,
            ),
            SizedBox(
              height: 16.0,
            ),
            Text('Radio Group Value $_groupVal'),
            SizedBox(
              height: 16.0,
            ),
            RadioListTile(
              value: 0,
              groupValue: _groupVal,
              onChanged: _handleRadioValChanged,
              title: Text('Options A'),
              subtitle: Text('description'),
              secondary: Icon(Icons.filter_1),
              selected: _groupVal == 0,
            ),
            RadioListTile(
              value: 1,
              groupValue: _groupVal,
              onChanged: _handleRadioValChanged,
              title: Text('Options B'),
              subtitle: Text('description'),
              secondary: Icon(Icons.filter_2),
              selected: _groupVal == 1,
            ),
            SwitchListTile(
              value: _switchItemValA,
              onChanged: (val) {
                setState(() {
                  _switchItemValA = val;
                });
              },
              title: Text('SwitchItem A'),
              subtitle: Text('description'),
              secondary: _switchItemValA
                  ? Icon(Icons.visibility)
                  : Icon(Icons.visibility_off),
              selected: _switchItemValA,
            ),
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
