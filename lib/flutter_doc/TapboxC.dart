import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TapboxC extends StatefulWidget {
//  父Widget维护子Widget的State
  final bool active;
  final ValueChanged<bool> onChanged;

  TapboxC({this.active: false, @required this.onChanged});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TapboxCState();
  }
}

class TapboxCState extends State<TapboxC> {
// 子Widget维护自身State
  bool _highlight = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      onTap: _handleTap,
      child: Container(
        width: 200.0,
        height: 200.0,
        child: Center(
          child: Text(
            widget.active ? 'Active' : 'Inactive',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        decoration: BoxDecoration(
            color: widget.active ? Colors.green[700] : Colors.grey[600],
            border: _highlight
                ? Border.all(color: Colors.teal[700], width: 10.0) : Border.all(color: Colors.pink[700], width: 10.0)
        ),
      ),
    );
  }
}

/**
 * 父Widget
 */
class ParentWidgetC extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ParentWidgetCState();
  }
}

class ParentWidgetCState extends State<ParentWidgetC> {
  bool _active = false;

  void _handleTapboxCChanged(bool newVal) {
    setState(() {
      _active = newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: TapboxC(
        active: _active,
        onChanged: _handleTapboxCChanged,
      ),
    );
  }
}
