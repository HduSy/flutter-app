import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Demo'),
      ),
//      body: ThemeDemo(),
      body: Theme(
//      data: ThemeData(primaryColor: Colors.blue),
        data: Theme.of(context).copyWith(primaryColor: Colors.blue),
//        child: ThemeDemo(),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
//              TextFieldDemo(),
              RegisterDemo(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegisterDemoState();
  }
}

class RegisterDemoState extends State<RegisterDemo> {
  final registerFormKey = GlobalKey<FormState>();
  String username, password;

  void submitRegisterForm() {
    registerFormKey.currentState.save();
    debugPrint('username: $username');
    debugPrint('password: $password');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'UserName:'),
            onSaved: (val) {
              username = val;
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(labelText: 'PassWord:'),
            onSaved: (val) {
              password = val;
            },
          ),
          SizedBox(
            height: 32.0,
          ),
          Container(
              width: double.infinity,
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                child: Text('Register', style: TextStyle(color: Colors.white)),
                elevation: 0.0,
                onPressed: submitRegisterForm,
              ))
        ],
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TextFieldDemoState();
  }
}

class TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController.text = 'Hi';
    textEditingController.addListener(() {
      debugPrint('input: ${textEditingController.text}');
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      controller: textEditingController,
//      onChanged: (value){
//        debugPrint('input: $value');
//      },
      onSubmitted: (value) {
        debugPrint('submit: $value');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.report_problem),
        labelText: 'Title',
        hintText: 'input your title',
//        border: InputBorder.none,
        border: OutlineInputBorder(),
//        filled: true
      ),
    );
  }
}
