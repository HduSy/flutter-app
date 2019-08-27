import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ChipDemoState();
  }
}

class ChipDemoState extends State<ChipDemo> {
  List<String> _tags = ['Apple', 'Orange', 'Banana'];
  String _actionchipTag = 'Nothing';
  List<String> _filterchipTags = [];
  String _choice = 'Orange';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
//              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Chip(
                  label: Text('Life'),
                ),
//                SizedBox(width: 6.0,),
                Chip(
                  label: Text('SunSet'),
                  backgroundColor: Colors.orange,
                ),
//                SizedBox(width: 6.0,),
                Chip(
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://upload.jianshu.io/users/upload_avatars/2645005/639ccbf3-1295-4234-9e85-d934a93d8df5.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/120/h/120'),
                  ),
                  label: Text('Sagan'),
                ),
//                SizedBox(width: 6.0,),
                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.pink,
                    child: Text('P'),
                  ),
                  label: Text('IPV6IPV6IPV6IPV6IPV6IPV6'),
                ),
                Chip(
                  label: Text('City'),
                  deleteIcon: Icon(Icons.delete_forever),
                  deleteIconColor: Colors.red,
                  deleteButtonTooltipMessage: 'Remove this tag',
                  onDeleted: () {},
                ),
                Divider(
                  color: Colors.grey,
                  height: 16.0,
                  indent: 32.0,
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((String item) {
                    return Chip(
                      label: Text(item),
                      onDeleted: () {
                        setState(() {
                          _tags.remove(item);
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 16.0,
                  indent: 32.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Text('ActionChip tag: $_actionchipTag')],
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((String item) {
                    return ActionChip(
                        label: Text(item),
                        onPressed: () {
                          setState(() {
                            _actionchipTag = item;
                          });
                        });
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 16.0,
                  indent: 32.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Text('FilterChip: $_filterchipTags')],
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((String item) {
                    return FilterChip(
                        label: Text(item),
                        selected: _filterchipTags.contains(item),
                        onSelected: (value) {
                          setState(() {
                            if (_filterchipTags.contains(item)) {
                              _filterchipTags.remove(item);
                            } else {
                              _filterchipTags.add(item);
                            }
                          });
                        });
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 16.0,
                  indent: 32.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Text('ChoiceChip: $_choice')],
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((String item) {
                    return ChoiceChip(
                      label: Text(item),
                      selected: _choice == item,
                      selectedColor: Colors.black,
                      onSelected: (value) {
                        setState(() {
                          _choice = item;
                        });
                      },
                    );
                  }).toList(),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: () {
          setState(() {
            _tags = ['Apple', 'Orange', 'Banana'];
            _filterchipTags = [];
            _choice = 'Orange';
          });
        },
      ),
    );
  }
}
