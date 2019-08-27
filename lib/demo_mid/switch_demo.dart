import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SwitchDemoState();
  }
}

class SwitchDemoState extends State<SwitchDemo> {
  bool _switchItemA = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_switchItemA? '笑脸':'哭',style: TextStyle(fontSize: 32.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Switch(
                    value: _switchItemA,
                    onChanged: (val) {
                      setState(() {
                        _switchItemA = val;
                      });
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
