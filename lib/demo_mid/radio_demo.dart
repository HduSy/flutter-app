import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RadioDemoState();
  }
}
class RadioDemoState extends State<RadioDemo>{
  int _groupVal = 0;
  void _handleRadioValChanged(int val){
    setState(() {
      _groupVal = val;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 0,
                  groupValue: _groupVal,
                  onChanged: _handleRadioValChanged,
                  activeColor: Colors.black,
                ),
                Radio(
                  value: 1,
                  groupValue: _groupVal,
                  onChanged: _handleRadioValChanged,
                  activeColor: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}