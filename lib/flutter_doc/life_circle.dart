import 'package:flutter/material.dart';

class LifeCircle extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LifeCircleState();
  }
}

class LifeCircleState extends State<LifeCircle> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    debugPrint('initState');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    debugPrint('didChangeDependencies');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

  @override
  void didUpdateWidget(LifeCircle oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    debugPrint('didUpdateWidget');
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    debugPrint('deactive');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    debugPrint('dispose');
  }
}
