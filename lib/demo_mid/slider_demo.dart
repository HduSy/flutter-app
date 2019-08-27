import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SliderDemoState();
  }
}

class SliderDemoState extends State<SliderDemo> {
  double _sliderVal = 0.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SliderDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Slider(
                  value: _sliderVal,
                  onChanged: (val) {
                    setState(() {
                      _sliderVal = val;
                    });
                  },
                  min: 0.0,
                  max: 10.0,
                  divisions: 10,
                  label: '${_sliderVal.toInt()}',
                  activeColor: Theme.of(context).accentColor,
                  inactiveColor: Theme.of(context).accentColor.withOpacity(0.3),
                ),
              ],
            ),
            SizedBox(
              height: 16.0,
            ),
            Text('SliderValue: $_sliderVal'),
          ],
        ),
      ),
    );
  }
}
