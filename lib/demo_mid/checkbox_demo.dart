import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CheckBoxDemoState();
  }
}

class CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _checkboxValA = false;
  int _groupVal = 0;

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
        title: Text('CheckBoxDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              value: _checkboxValA,
              onChanged: (value) {
                setState(() {
                  _checkboxValA = value;
                });
              },
              title: Text('CheckBox Val A'),
              subtitle: Text('description...'),
              secondary: Icon(Icons.bookmark),
              selected: _checkboxValA,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Checkbox(
//                  value: _checkboxValA,
//                  onChanged: (value) {
//                    setState(() {
//                      _checkboxValA = value;
//                    });
//                  },
//                  activeColor: Colors.black,
//                )
//                Radio(
//                  value: 0,
//                  groupValue: _groupVal,
//                  onChanged: _handleRadioValChanged,
//                  activeColor: Colors.black,
//                ),
//                Radio(
//                  value: 1,
//                  groupValue: _groupVal,
//                  onChanged: _handleRadioValChanged,
//                  activeColor: Colors.black,
//                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
