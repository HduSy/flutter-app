import 'package:flutter/material.dart';
import 'package:flutter_app/flutter_doc/tip_route.dart';
class RouterTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Theme
            .of(context)
            .primaryColor.withOpacity(0.4),
        child: Center(
            child: RaisedButton(
              child: Text('打开提示页'),
              onPressed: () async {
                var result = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return TipRoute(text: '我是提示xxx');
                    }));
                print('普通路由返回值:$result');
                var resultalis = await Navigator.pushNamed(context, 'namedroute',);
                print('命名路由返回值:$result');
                Navigator.pushNamed(context, 'param',arguments: 'hi');
                print('命名路由传参:hi');
              },
            ),
        )
    );
  }
}
