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
  StreamController<String> _streamDemoController;
  StreamController<String> _streamMultiController;

  StreamSink _streamSink;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('Create a Stream.');
//    Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    _streamDemoController = StreamController<String>();
    _streamSink = _streamDemoController.sink;

    _streamMultiController = StreamController.broadcast();
    print('Start listening a Stream.');
//    _streamDemoSubscription = _streamDemo.listen(onData, onError: onErr, onDone: onDone);
    _streamDemoSubscription = _streamDemoController.stream
        .listen(onData, onError: onErr, onDone: onDone);
    /**
     * 两个订阅
     */
    _streamMultiController.stream.listen(onData);
    _streamMultiController.stream.listen(onDataTwo);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _streamDemoController.close();
    _streamMultiController.close();
    super.dispose();
  }

  void onData(String data) {
    print('Data: $data');
  }

  void onDataTwo(String data) {
    print('onDataTwo: $data');
  }

  void onErr(error) {
    print('Error: $error');
  }

  void onDone() {
    print('Done!');
  }

  void _addDatatoStream() async {
    print('Add data to a Stream');
    String data = await fetchData();
    _streamDemoController.add(data); // way-1
    _streamSink.add(data); // way-2
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
          StreamBuilder(
            stream: _streamMultiController.stream,
            initialData: '...',
            builder: (context, snapshot) {
              return Text('${snapshot.data}');
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  onPressed: _addDatatoStream, child: Text('addata to Stream')),
            ],
          )
        ],
      ),
    );
  }
}
