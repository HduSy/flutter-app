import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'SongYao',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              'hdusy14032122@gmail.com',
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i1.hdslb.com/bfs/face/82fd5e63d6ffebe996cd9e05ad482b43bc59e147.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                  image: NetworkImage(
                      'https://i1.hdslb.com/bfs/face/82fd5e63d6ffebe996cd9e05ad482b43bc59e147.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.yellow[400].withOpacity(0.6),
                      BlendMode.hardLight)),
            ),
          ),
//                DrawerHeader(
//                  child: Text('header'.toUpperCase()),
//                  decoration: BoxDecoration(
//                    color: Colors.grey[100]
//                  ),
//                ),
          ListTile(
            title: Text(
              'Message',
              textAlign: TextAlign.center,
            ),
            trailing: Icon(
              Icons.message,
              size: 22.0,
              color: Colors.black12,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'favorate',
              textAlign: TextAlign.center,
            ),
            trailing: Icon(
              Icons.favorite,
              size: 22.0,
              color: Colors.black12,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'setting',
              textAlign: TextAlign.center,
            ),
            trailing: Icon(
              Icons.settings,
              size: 22.0,
              color: Colors.black12,
            ),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
