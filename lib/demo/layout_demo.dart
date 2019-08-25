import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
//          IconBadge(Icons.pool,size: 64.0,),
//          IconBadge(Icons.beach_access,size: 76.0,),
//          IconBadge(Icons.airplanemode_active,size: 64.0,)
          Stack(
            alignment: Alignment.topRight,
            children: <Widget>[
              SizedBox(
                width: 100.0,
                height: 100.0,
                child: Container(
                  child: Icon(
                    Icons.poll,
                    size: 64.0,
                    color: Colors.deepPurple,
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(4, 25, 33, 1.0),
//                      borderRadius: BorderRadius.circular(4.0),
                      shape: BoxShape.circle,
                      gradient: RadialGradient(colors: [
                        Color.fromRGBO(7, 102, 255, 1.0),
                        Color.fromRGBO(3, 54, 255, 1.0)
                      ]),
                      boxShadow: [
                        BoxShadow(color: Colors.green, offset: Offset(3.0, 4.0))
                      ]),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              SizedBox(
                width: 320.0,
                height: 320.0,
                child: Container(
                  alignment: Alignment(1.0, 1.0),
                  child: Icon(
                    Icons.poll,
                    size: 64.0,
                    color: Colors.deepPurple,
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(4, 25, 33, 1.0),
                      borderRadius: BorderRadius.circular(4.0),
                      boxShadow: [
                        BoxShadow(color: Colors.green, offset: Offset(3.0, 4.0))
                      ]),
                ),
              ),
              Positioned(
                  left: 64.0,
                  top: 64.0,
                  child: Icon(
                    Icons.favorite,
                    size: 64.0,
                    color: Colors.pink,
                  )),
              AspectRatio(
                aspectRatio: 3.0 / 2.0,
                child: Container(
                  color: Color.fromRGBO(21, 66, 255, 1.0),
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(minWidth: 200.0, maxHeight: 200.0),
                child: Container(
                  alignment: Alignment(1.0, 1.0),
                  child: Icon(
                    Icons.poll,
                    size: 64.0,
                    color: Colors.deepPurple,
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(4, 25, 33, 1.0),
                      borderRadius: BorderRadius.circular(4.0),
                      boxShadow: [
                        BoxShadow(color: Colors.green, offset: Offset(3.0, 4.0))
                      ]),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
/**
 * 自定义组件
 */
class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 60.0,
      height: size + 60.0,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
