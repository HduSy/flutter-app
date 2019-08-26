import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  final Widget _floatingActionButton = FloatingActionButton(
    child: Icon(
      Icons.add,
      color: Colors.white,
    ),
    elevation: 0.0,
    backgroundColor: Colors.black,
//    shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
  );
  final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
    onPressed: () {},
    icon: Icon(Icons.add),
    label: Text('Add'),
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
//      floatingActionButton: _floatingActionButtonExtended,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        color: Theme.of(context).primaryColor,
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}