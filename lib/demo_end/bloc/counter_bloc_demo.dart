import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/demo_end/bloc/bloc_demo.dart';

class CounterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc _counterBloc = CounterProvider.of(context).bloc;
    // TODO: implement build
    return StreamBuilder(
      initialData: 0,
      // count = controller.stream
      stream: _counterBloc.count,
      builder: (context, snapshot) {
        return Center(
          child: ActionChip(
              label: Text('${snapshot.data}'),
              onPressed: () {
//                counter = controller.sink
//                sink.add or controller.add
                _counterBloc.counter.add(1);
              }),
        );
      },
    );
  }
}

class CounterActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc _counterBloc = CounterProvider.of(context).bloc;
    // TODO: implement build
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        _counterBloc.log();
        _counterBloc.counter.add(1);
      },
    );
  }
}

/**
 * InheritedWidget 传递Bloc
 * 创建selfbloc
 * selfprovider包裹,提供属性bloc,并为bloc属性赋值selfbloc
 */
class CounterProvider extends InheritedWidget {
  final Widget child;
  final CounterBloc bloc;

  CounterProvider({this.child, this.bloc}) : super(child: child);

  static CounterProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(CounterProvider);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }
}

class CounterBloc {
  final _counterActionController = StreamController<int>();

  StreamSink<int> get counter => _counterActionController.sink; // !important

  int _count = 0;
  final _counterController = StreamController<int>();

  Stream<int> get count => _counterController.stream; // // !important

  CounterBloc() {
    _counterActionController.stream.listen(onData);
  }

  void onData(int data) {
    print(data);
    _count = _count + data;
    _counterController.add(_count);
  }

  void dispose() {
    _counterActionController.close();
    _counterController.close();
  }

  void log() {
    print('Bloc');
  }
}
