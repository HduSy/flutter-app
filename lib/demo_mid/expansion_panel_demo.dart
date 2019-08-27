import 'package:flutter/material.dart';

class ExpansionPanelItem {
  final String headerText;
  final Widget body;
  bool isExpanded;

  ExpansionPanelItem({this.headerText, this.body, this.isExpanded});
}

class ExpansionPanelDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ExpansionPanelDemoState();
  }
}

class ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
//  bool _isExpanded = false;
  List<ExpansionPanelItem> _expansionPanelItems;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _expansionPanelItems = <ExpansionPanelItem>[
      ExpansionPanelItem(
          headerText: 'Panel A',
          body: Container(
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            child: Text('Content for panel A'),
          ),
          isExpanded: false),
      ExpansionPanelItem(
          headerText: 'Panel B',
          body: Container(
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            child: Text('Content for panel B'),
          ),
          isExpanded: false),
      ExpansionPanelItem(
          headerText: 'Panel C',
          body: Container(
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            child: Text('Content for panel C'),
          ),
          isExpanded: false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanel Demo'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ExpansionPanelList(
              expansionCallback: (int panelIndex, bool isExpanded) {
                setState(() {
//                  _isExpanded = !isExpanded;
                  _expansionPanelItems[panelIndex].isExpanded = !isExpanded;
                });
              },
              /*children: [
                ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Container(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Panel A',
                          style: Theme.of(context).textTheme.title,
                        ),
                      );
                    },
                    body: Container(
                      padding: EdgeInsets.all(16.0),
                      width: double.infinity,
                      child: Text('Content for panel A'),
                    ),
                    isExpanded: _isExpanded)
              ],*/
              children: _expansionPanelItems.map((ExpansionPanelItem item) {
                return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Container(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        item.headerText,
                        style: Theme.of(context).textTheme.title,
                      ),
                    );
                  },
                  body: item.body,
                  isExpanded: item.isExpanded,
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
