import 'package:flutter/material.dart';

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
    return Scaffold(
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
      ),
    );
  }
}

/**
 * 由父辈管理状态（数据）
 * 子组件自定义需要的值和构造函数,父辈传递值即可
 */
class Counter extends StatelessWidget {
  final int count;

  Counter(this.count);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Chip(
        label: Text('$count'),
      ),
    );
  }
}

/**
 * 从父辈传递回调函数
 * 子组件自定义需要的值、VoidCallBack回调函数和构造函数,父辈实现一个回调函数并传递响应的值给子组件即可
 */
class Counter1 extends StatelessWidget {
  final int count;
  final VoidCallback increaseCallback;

  Counter1(this.count, this.increaseCallback);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: ActionChip(label: Text('$count'), onPressed: increaseCallback),
    );
  }
}

/**
 * Widget树状态传递存在一定问题
 * 因为CounterWrapper本身并不需要状态
 */
class CounterWrapper extends StatelessWidget {
  final int count;
  final VoidCallback increaseCallback;

  CounterWrapper(this.count, this.increaseCallback);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Counter1(count, increaseCallback),
    );
  }
}