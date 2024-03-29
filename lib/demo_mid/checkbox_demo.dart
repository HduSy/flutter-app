import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CheckBoxDemoState();
  }
}
class CheckBoxDemoState extends State<CheckBoxDemo>{
  bool _checkboxValA = false;
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                  value: _checkboxValA,
                  onChanged: (value) {
                    setState(() {
                      _checkboxValA = value;
                    });
                  },
                  activeColor: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}