import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

/**
 * ScopedModel使用方法
 * 构建selfmodel extends Model
 * 属性及方法
 * ScopedModel包裹并提供model属性为selfmodel
 * ScopedModelDescendant<CounterModel>()
 */
class ScopedModelDemo extends StatelessWidget {
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
           * Finds a specific [Model] provided by a [ScopedModel] Widget and rebuilds whenever the [Model] changes.
           */
          floatingActionButton: ScopedModelDescendant<CounterModel>(
            // Provides an option to disable rebuilding when the [Model] changes.
            rebuildOnChange: false, //设置不需要重建漂浮按钮
            builder: (context, child, model) => FloatingActionButton(
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
      /**
       * Builds a child for a [ScopedModelDescendant].
       */
      builder: (context, child, model) => ActionChip(
          label: Text('$model.count'), onPressed: model.increaseCount),
    );
  }
}
