import 'package:flutter/material.dart';
import 'package:flutter_app/model/post.dart';

/**
 * 继承抽象类
 */
class PostDataSource extends DataTableSource {
  final List<Post> _posts = posts;
  int _selectedCount = 0;

  @override
  DataRow getRow(int index) {
    final Post post = _posts[index];
    // TODO: implement getRow
    return DataRow.byIndex(index: index, cells: <DataCell>[
      DataCell(Text(post.title)),
      DataCell(Text(post.author)),
      DataCell(Image.network(post.imageUrl))
    ]);
  }

  @override
  // TODO: implement rowCount
  int get rowCount => _posts.length;

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => _selectedCount;

  /**
   * 参数为函数
   */
  _sort(getField(post), bool ascending) {
    _posts.sort((a, b) {
      if (!ascending) {
        final c = a;
        a = b;
        b = c;
      }
      final aVal = getField(a);
      final bVal = getField(b);
      return Comparable.compare(aVal, bVal);
    });
    notifyListeners();
  }
}

class PaginatedDataTableDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PaginatedDataTableDemoState();
  }
}

class PaginatedDataTableDemoState extends State<PaginatedDataTableDemo> {
  int _sortColumnIndex = 1;
  bool _sortAscending = true;
  final PostDataSource _postsDataSource = PostDataSource();

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
            PaginatedDataTable(
              header: Text('Post'),
              source: _postsDataSource,
              rowsPerPage: 5,
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
                      _postsDataSource._sort(
                          (post) => post.author.length, ascending);
                      setState(() {
                        _sortColumnIndex = index;
                        _sortAscending = ascending;
                      });
                    }),
                DataColumn(
                    label: Container(
                  width: 120.0,
                  child: Text('image'),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
