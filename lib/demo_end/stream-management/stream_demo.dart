import 'package:flutter/material.dart';
import 'dart:async';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StreamDemoHomeState();
  }
}

class StreamDemoHomeState extends State<StreamDemoHome> {
  StreamSubscription _streamDemoSubscription;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('Create a Stream.');
    Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    print('Start listening a Stream.');
    _streamDemoSubscription =
        _streamDemo.listen(onData, onError: onErr, onDone: onDone);
  }

  void onData(String data) {
    print(data);
  }

  void onErr(error) {
    print('Error: $error');
  }

  void onDone() {
    print('Done!');
  }

  void _pauseSubscription() {
    print('Pause a Subscription');
    _streamDemoSubscription.pause();
  }

  void _cancelSubscription() {
    print('Cancel a Subscription');
    _streamDemoSubscription.cancel();
  }

  void _resumeSubscription() {
    print('Resume a Subscription');
    _streamDemoSubscription.resume();
  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 5));
//    throw 'Something Happened';
    return 'Hello~';
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(onPressed: _pauseSubscription, child: Text('pause')),
              FlatButton(onPressed: _resumeSubscription, child: Text('resume')),
              FlatButton(onPressed: _cancelSubscription, child: Text('cancel')),
            ],
          )
        ],
      ),
    );
  }
}
