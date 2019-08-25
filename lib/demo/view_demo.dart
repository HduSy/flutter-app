import 'package:flutter/material.dart';
import 'package:flutter_app/model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget _pageItemBuilder(BuildContext context, int index) {
      return Stack(
        children: <Widget>[
          SizedBox.expand(
            child: Image.network(
              posts[index].imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              bottom: 8.0,
              left: 8.0,
              child: Column(
                children: <Widget>[
                  Text(
                    posts[index].title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(posts[index].author)
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ))
        ],
      );
    }

//    return PageViewDemo();
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}
/**
 * PageView Demo
 */
class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      pageSnapping: true,
      reverse: true,
      scrollDirection: Axis.horizontal,
      onPageChanged: (currentPage) => debugPrint('Page: $currentPage'),
      controller: PageController(
          initialPage: 0, keepPage: false, viewportFraction: 0.85),
      children: <Widget>[
        Container(
          color: Colors.brown,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'One'.toUpperCase(),
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Two'.toUpperCase(),
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.purple,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Three'.toUpperCase(),
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        )
      ],
    );
  }
}
/**
 * GridView.count Demo
 */
class GridViewDemo extends StatelessWidget {
  List<Widget> _buildTiles(int count) {
    return List.generate(count, (int index) {
      return Container(
        color: Colors.grey,
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'Item $index',
          style: TextStyle(fontSize: 18.0, color: Colors.black),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}
/**
 * GridView.extent Demo
 */
class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildTiles(int count) {
    return List.generate(count, (int index) {
      return Container(
        color: Colors.grey,
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'Item $index',
          style: TextStyle(fontSize: 18.0, color: Colors.black),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
//      crossAxisCount: 3,
    maxCrossAxisExtent: 150.0,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      scrollDirection: Axis.vertical,
      children: _buildTiles(100),
    );
  }
}
/**
 * GridView.builder Demo
 */
class GridViewBuilderDemo extends StatelessWidget{
  Widget _gridItemBuilder(BuildContext context,int index){
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        itemCount: posts.length,
        itemBuilder: _gridItemBuilder,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 8.0
    ),);
  }
}