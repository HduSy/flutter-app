import 'package:flutter/material.dart';

/**
 * Widget管理自身状态
 */
class TapboxA extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TapboxAState();
  }
}

class TapboxAState extends State<TapboxA> {
  bool _isactive = false;

  void _handleTap() {
    setState(() {
      _isactive = !_isactive;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Text(
          _isactive ? 'Active' : 'Inactive',
          style: TextStyle(fontSize: 32.0, color: Colors.white),
        ),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: _isactive ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }
}
