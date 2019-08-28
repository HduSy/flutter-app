import 'package:flutter/material.dart';
import 'dart:async';
import 'package:rxdart/rxdart.dart';

class RxDartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('RxdartDemo'),
      ),
      body: RxDartDemoHome(),
    );
  }
}

class RxDartDemoHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RxDartDemoHomeState();
  }
}

class RxDartDemoHomeState extends State<RxDartDemoHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /**
     * Observable <==> Stream
     */
//    Observable<String> _observable =
//        Observable(Stream.fromIterable(['Hello', '您好']));
//    Observable.fromFuture(Future.value('hello~'));
//    Observable.fromIterable(['hello','您好']);
//        Observable.just('hello~');
//    Observable.periodic(Duration(seconds: 3), (x) => x.toString());
//    _observable.listen(print);

    PublishSubject<String> _subject = PublishSubject<String>();
    _subject.listen((data) => print('listen 1: $data'));
    _subject.add('bonjour~'); // listen 2 尚未订阅
    _subject.listen((data) => print('listen 2: ${data.toUpperCase()}'));
    _subject.add('hola~');
    BehaviorSubject<String> _subject1 = BehaviorSubject<String>();
    _subject1.add('hello~'); // 只有 '英国你好'
    _subject1.add('英国你好');
    _subject1.listen((data) => print('listen 3: $data'));
    _subject1.listen((data) => print('listen 4: $data'));
    ReplaySubject<String> _subject2 = ReplaySubject<String>(maxSize: 2);
    _subject2.add('hello~');
    _subject2.add('美国你好');
    _subject2.add('hi');
    _subject2.listen((data) => print('listen 5: $data'));
    _subject2.listen((data) => print('listen 6: $data'));
    PublishSubject<String> _subject3 = PublishSubject<String>();
    /**
     * map
     */
    _subject3.map((item) => 'item: $item').listen((data) => print(data));
    /**
     * where
     */
    _subject3.where((item) => item.length > 6).listen((data) => print(data));
    _subject3.debounceTime(Duration(milliseconds: 500)).listen((data) => print(data));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container();
  }
}
