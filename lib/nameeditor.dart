import 'package:flutter/material.dart';


class NameEditor extends StatefulWidget {
  NameEditor(this.onNameChanged);
  final ValueChanged<String> onNameChanged;

  @override
  _NameEditorState createState() => new _NameEditorState(onNameChanged);
}

class _NameEditorState extends State<NameEditor> {
  _NameEditorState(this.onNameChanged);
  
  final ValueChanged<String> onNameChanged;
  TextEditingController _name;


  @override
  void initState() {
    super.initState();
    _name = new TextEditingController();
    
  }
  
  void _onPressed() {
    onNameChanged(_name.text);
  }

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Column(
        children: <Widget>[
          new TextField(
            controller: _name,
            decoration: new InputDecoration(labelText: 'Enter your name'),
          ),
          new RaisedButton(onPressed: _onPressed, child: new Text('Click me'),)
        ],
      ),
    );
  }
}
