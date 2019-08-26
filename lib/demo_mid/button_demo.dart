import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('FlatButton'),
          onPressed: () {},
          splashColor: Colors.grey[100],
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('FlatButton'),
          onPressed: () {},
          splashColor: Colors.grey[100],
          textColor: Theme.of(context).accentColor,
        )
      ],
    );
    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
//          data: ThemeData(),
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
//              shape: BeveledRectangleBorder(
//                borderRadius: BorderRadius.circular(5.0)
//              ),
                shape: StadiumBorder(),
              )),
          child: RaisedButton(
            child: Text('RaisedButton'),
            onPressed: () {},
            color: Theme.of(context).accentColor,
            splashColor: Colors.grey,
            textColor: Theme.of(context).primaryColor,
            textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(
          width: 32.0,
        ),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('RaisedButton'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        )
      ],
    );
    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
//          data: ThemeData(),
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
//              shape: BeveledRectangleBorder(
//                borderRadius: BorderRadius.circular(5.0)
//              ),
                shape: StadiumBorder(),
              )),
          child: OutlineButton(
            child: Text('OutlineButton'),
            onPressed: () {},
            borderSide: BorderSide(color: Colors.black),
//            color: Theme.of(context).accentColor,
            splashColor: Colors.grey[100],
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
//            textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(
          width: 32.0,
        ),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text('OutlineButton'),
          onPressed: () {},
          borderSide: BorderSide(color: Colors.black),
          splashColor: Colors.grey[100],
          highlightedBorderColor: Colors.grey,
          textColor: Colors.black,
        )
      ],
    );
    final Widget fixedWidthButton = Container(
        width: 160.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
//          data: ThemeData(),
              data: Theme.of(context).copyWith(
                  buttonColor: Theme.of(context).accentColor,
                  buttonTheme: ButtonThemeData(
                    textTheme: ButtonTextTheme.primary,
//              shape: BeveledRectangleBorder(
//                borderRadius: BorderRadius.circular(5.0)
//              ),
                    shape: StadiumBorder(),
                  )),
              child: OutlineButton(
                child: Text('OutlineButton'),
                onPressed: () {},
                borderSide: BorderSide(color: Colors.black),
//            color: Theme.of(context).accentColor,
                splashColor: Colors.grey[100],
                textColor: Colors.black,
                highlightedBorderColor: Colors.grey,
//            textTheme: ButtonTextTheme.primary,
              ),
            ),
          ],
        ));
    final Widget expandedWidthButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlineButton(
            child: Text('OutlineButton'),
            onPressed: () {},
            borderSide: BorderSide(color: Colors.black),
            splashColor: Colors.grey[100],
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        Expanded(
          flex: 2,
          child: OutlineButton(
            child: Text('OutlineButton'),
            onPressed: () {},
            borderSide: BorderSide(color: Colors.black),
            splashColor: Colors.grey[100],
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
          ),
        ),
      ],
    );
    final Widget buttonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonTheme: ButtonThemeData(
//                改动这里的水平间距
                  padding: EdgeInsets.symmetric(horizontal: 16.0))),
          child: ButtonBar(
            children: <Widget>[
              OutlineButton(
                child: Text('OutlineButton'),
                onPressed: () {},
                borderSide: BorderSide(color: Colors.black),
                splashColor: Colors.grey[100],
                textColor: Colors.black,
                highlightedBorderColor: Colors.grey,
              ),
              OutlineButton(
                child: Text('OutlineButton'),
                onPressed: () {},
                borderSide: BorderSide(color: Colors.black),
                splashColor: Colors.grey[100],
                textColor: Colors.black,
                highlightedBorderColor: Colors.grey,
              ),
            ],
          ),
        )
      ],
    );
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtonDemo,
            outlineButtonDemo,
            fixedWidthButton,
            expandedWidthButton,
            buttonBarDemo,
          ],
        ),
      ),
    );
  }
}
