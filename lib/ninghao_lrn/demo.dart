import 'package:flutter/material.dart';
import 'package:flutter_app/demo_end/bloc/bloc_demo.dart';
import 'package:flutter_app/demo_up/drawer_demo.dart';
import 'package:flutter_app/demo_up/bottom_navigation_bar_demo.dart';
import 'package:flutter_app/demo_up/listview_demo.dart';
import 'package:flutter_app/demo_up/basic_demo.dart';
import 'package:flutter_app/demo_up/layout_demo.dart';
import 'package:flutter_app/demo_up/view_demo.dart';
import 'package:flutter_app/demo_up/sliver_demo.dart';
import 'package:flutter_app/demo_up/navigator_demo.dart';
import 'package:flutter_app/demo_mid/form_demo.dart';
import 'package:flutter_app/demo_mid/material_components.dart';
import 'package:flutter_app/demo_end/stream-management/stream_demo.dart';

/**
 * RxDart
 */
import 'package:flutter_app/demo_end/rxdart/rxdart_demo.dart';
import 'package:flutter_app/demo_end/rxdart/textfield_subject_demo.dart';

/**
 * 状态即数据
 */
import 'package:flutter_app/demo_mid/state-management//stateless_demo.dart';
import 'package:flutter_app/demo_mid/state-management//stateful_demo.dart';

/**
 * Bloc
 */
import 'package:flutter_app/demo_end/bloc/bloc_demo.dart';

//  挂载根widget
//void main() => runApp(App());

// 一个自定义widget就是一个类
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//      home: Home(),
//    home: SliverDemo(),
//    home: NavigatorDemo(),
      initialRoute: '/bloc-demo',
      routes: {
        '/': (context) => NavigatorDemo(),
        '/about': (context) => Page(
              title: 'About',
            ),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialComponents(),
//        '/stateless-management': (context) => StatelessDemo(),
        '/stateful-management': (context) => StatefulDemo(),
        '/stream-demo': (context) => StreamDemo(),
        '/rxdart': (context) => RxDartDemo(),
        '/textfield-subject': (context) => TextFieldSubjectDemo(),
        '/bloc-demo': (context) => BlocDemo(),
      },
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70,
          accentColor: Colors.red),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
//            leading: IconButton(
//              icon: Icon(Icons.menu),
//              tooltip: 'Navigation',
//              onPressed: () => debugPrint('Navigation Button is pressed.'),
//            ),
            title: Text('SongYao'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: () => debugPrint('Search Button is pressed.'),
              )
            ],
            elevation: 4.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.local_florist),
                ),
                Tab(
                  icon: Icon(Icons.change_history),
                ),
                Tab(
                  icon: Icon(Icons.directions_bike),
                ),
                Tab(
                  icon: Icon(Icons.view_quilt),
                )
              ],
            ),
          ),
          body: TabBarView(children: <Widget>[
//            Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
            ListViewDemo(),
//            Icon(Icons.change_history, size: 128.0, color: Colors.black12,),
            BasicDemo(),
//            Icon(Icons.directions_bike, size: 128.0, color: Colors.black12,),
            Container(
              color: Colors.white,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566024098931&di=79fa1b4d14db15c44d70834d421f7f7a&imgtype=0&src=http%3A%2F%2Fgss0.baidu.com%2F7Po3dSag_xI4khGko9WTAnF6hhy%2Fzhidao%2Fpic%2Fitem%2F1f178a82b9014a90a14ed9d0aa773912b31bee6f.jpg'),
                      alignment: Alignment.topCenter,
//                repeat: ImageRepeat.repeatY,
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.blue.withOpacity(0.7), BlendMode.hardLight))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.watch,
                      size: 32.0,
                      color: Colors.white,
                    ),
//                  color: Colors.blue,
                    padding: EdgeInsets.all(2.0),
                    margin: EdgeInsets.all(1.0),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border(
                            top: BorderSide(
                                width: 4.0,
                                color: Colors.blue,
                                style: BorderStyle.solid)),
//                    borderRadius: BorderRadius.all(64.0),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(1.0, 2.0),
                              color: Color.fromRGBO(16, 20, 188, 1.0),
                              blurRadius: 25.0,
                              spreadRadius: 2.0)
                        ],
                        shape: BoxShape.circle,
//                    gradient: RadialGradient(
//                        colors: [
//                          Colors.green,
//                          Colors.yellow
//                        ]
//                    )
                        gradient: LinearGradient(
                            colors: [Colors.green, Colors.yellow],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                    width: 90.0,
                    height: 90.0,
                  )
                ],
              ),
            ),
            LayoutDemo(),
//            ViewDemo(),
            SliverDemo()
          ]),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ));
  }
}
