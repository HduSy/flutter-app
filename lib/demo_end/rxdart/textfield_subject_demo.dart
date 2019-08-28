import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class TextFieldSubjectDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('TextFieldSubjectDemo'),
      ),
      body: TextFieldSubject(),
    );
  }
}

class TextFieldSubject extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TextFieldSubjectState();
  }
}

class TextFieldSubjectState extends State<TextFieldSubject> {
  PublishSubject<String> _subject;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _subject = PublishSubject<String>();
    _subject.listen((data) => print(data));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _subject.close();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Theme(
        data: Theme.of(context).copyWith(primaryColor: Colors.black),
        child: TextField(
          onChanged: (value) {
            _subject.add('input: $value');
          },
          onSubmitted: (value) {
            _subject.add('submit: $value');
          },
          decoration: InputDecoration(labelText: 'Title: ', filled: true),
        ));
  }
}
