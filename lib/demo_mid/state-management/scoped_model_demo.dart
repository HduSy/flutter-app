import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class StatefulDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /**
     * ScopedModel 包裹
     */
    return ScopedModel(
      model: CounterModel(),
      child: Scaffold(
          appBar: AppBar(
            title: Text('ScopedModelDemo'),
            elevation: 1.0,
          ),
          body: Counter(),
          /**
           * ScopedModelDescendant 包裹
           */
          floatingActionButton: ScopedModelDescendant<CounterModel>(
            rebuildOnChange: false, //设置不需要重建漂浮按钮
            builder: (context, _, model) => FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: model.increaseCount,
                ),
          )),
    );
  }
}

class CounterModel extends Model {
  int _count = 0;

  int get count => _count;

  void increaseCount() {
    _count++;
    notifyListeners();
  }
}

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /**
     * ScopedModelDescendant 包裹
     */
    return ScopedModelDescendant<CounterModel>(
      builder: (context, _, model) => ActionChip(
          label: Text('$model.count'), onPressed: model.increaseCount),
    );
  }
}
