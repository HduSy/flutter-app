import 'package:flutter/material.dart';
import 'package:flutter_app/model/post.dart';

class DataTableDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DataTableDemoState();
  }
}

class DataTableDemoState extends State<DataTableDemo> {
  int _sortColumnIndex = 1;
  bool _sortAscending = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTableDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            DataTable(
              sortColumnIndex: _sortColumnIndex,
              sortAscending: _sortAscending,
              onSelectAll: (bool val) {},
              columns: [
                DataColumn(
                  label: Text('title'),
                ),
                DataColumn(
                    label: Text('emoji'),
                    onSort: (int index, bool ascending) {
                      setState(() {
                        _sortColumnIndex = index;
                        _sortAscending = ascending;
                      });
                      posts.sort((a, b) {
                        if (!ascending) {
                          final c = a;
                          a = b;
                          b = c;
                        }
                        return a.author.length.compareTo(b.author.length);
                      });
                    }),
                DataColumn(
                    label: Container(
                  width: 120.0,
                  child: Text('image'),
                )),
              ],
              /*rows: [
                  DataRow(
                    cells: [
                      DataCell(Text('hello~')),
                      DataCell(Text('songyao'))
                    ]
                  ),
                  DataRow(
                      cells: [
                        DataCell(Text('hello~')),
                        DataCell(Text('wangtong'))
                      ]
                  ),
                  DataRow(
                      cells: [
                        DataCell(Text('hello~')),
                        DataCell(Text('mengjiao'))
                      ]
                  ),
                ]*/
              rows: posts.map((post) {
                return DataRow(
                    selected: post.selected,
                    onSelectChanged: (bool val) {
                      setState(() {
                        if (post.selected != val) {
                          post.selected = val;
                        }
                      });
                    },
                    cells: [
                      DataCell(Text(post.title)),
                      DataCell(Text(post.author)),
                      DataCell(Image.network(post.imageUrl))
                    ]);
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
