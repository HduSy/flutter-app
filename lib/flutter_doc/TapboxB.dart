import 'package:flutter/material.dart';

/**
 * 子Widget
 */
class TapboxB extends StatelessWidget {
  final bool active;
  final ValueChanged<bool> onChanged;

  TapboxB({this.active: false, @required this.onChanged});

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        width: 200.0,
        height: 200.0,
        child: Center(
          child: Text(
            active ? 'Actice' : 'Inactive',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        color: active ? Colors.green[700] : Colors.grey[600],
      ),
    );
  }
}

/**
 * 父Widget管理子Widget的状态
 */
class ParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ParentWidgetState();
  }
}

class ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _handleTapboxBChanged(bool newVal) {
    setState(() {
      _active = newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: TapboxB(active: _active, onChanged: _handleTapboxBChanged),
    );
  }
}
