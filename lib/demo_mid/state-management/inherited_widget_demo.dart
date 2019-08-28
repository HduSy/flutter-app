import 'package:flutter/material.dart';

/**
 * InheritedWidget使用方法
 * 创建selfprovider extends InheritedWidget
 * 属性及构造函数
 * selfprovider包裹并将属性各个赋值
 */
class StatefulDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StatefulDemoState();
  }
}

class StatefulDemoState extends State<StatefulDemo> {
  int _count = 0;

  void _increaseCallback() {
    setState(() {
      _count++;
    });
    print(_count);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*return Scaffold(
      appBar: AppBar(
        title: Text('StateManagementDemo'),
        elevation: 1.0,
      ),
//      body: Counter(_count),
//      body: Counter1(_count, _increaseCallback),
      body: CounterWrapper(_count, _increaseCallback),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _count++;
          });
          print(_count);
        },
        onPressed: _increaseCallback,
      ),
    );*/
    /**
     * CounterProvider 包裹
     */
    return CounterProvider(
      count: _count,
      increaseCallBack: _increaseCallback,
      child: Scaffold(
        appBar: AppBar(
          title: Text('StateManagementDemo'),
          elevation: 1.0,
        ),
//      body: Counter(_count),
//      body: Counter1(_count, _increaseCallback),
//        body: CounterWrapper(_count, _increaseCallback),
        /**
         * 直接使用Counter
         */
        body: Counter(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _increaseCallback,
        ),
      ),
    );
  }
}

/**
 * InheritedWidget 把数据直接交给需要的小组件
 */
class CounterProvider extends InheritedWidget {
  final int count;
  final VoidCallback increaseCallBack;
  final Widget child;

  CounterProvider({this.count, this.increaseCallBack, this.child})
      : super(child: child);

  /**
   * 自定义获取InheritedWidget状态的of方法
   */
  static CounterProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(CounterProvider);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }
}

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /**
     * 利用InheritedWidget的of方法直接从InheritedWidget中获取状态
     * CounterProvider(child:Counter())--->Counter的BuildContext是CounterProvider(child:Counter())
     */
    final count = CounterProvider.of(context).count;
    final increaseCallback = CounterProvider.of(context).increaseCallBack;
    // TODO: implement build
    return Center(
      child: ActionChip(label: Text('$count'), onPressed: increaseCallback),
    );
  }
}

class CounterWrapper1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Counter(),
    );
  }
}
