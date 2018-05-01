import 'package:flutter/material.dart';
import 'nameeditor.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  String _name;

  @override
  void initState() {
    _name = '';
  }

  void onNameChanged(String value) {
    setState(() => _name = value);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('Hello ${_name}'),
              new NameEditor(onNameChanged),
            ],
          ),
        )
      ),
    );
  }
}
