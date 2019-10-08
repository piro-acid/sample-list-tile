import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

enum People { Json, Mary }

class _MyHomePageState extends State<MyHomePage> {
  bool _isCheckboxChecked = false;

  People _people;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.people),
                  title: Text("Single line ListTile"),
                  trailing: Icon(Icons.more_vert),
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.people),
                  title: Text("ListTile with subTitle"),
                  trailing: Icon(Icons.more_vert),
                  subtitle: Text("This is subtitle."),
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.people),
                  title: Text("ListTile with long subTitle"),
                  trailing: Icon(Icons.more_vert),
                  subtitle: Text(
                      "This is subtitle. Subtitle is very long and use three lines"),
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.people),
                  title: Text("ListTile with isThreeLine true"),
                  trailing: Icon(Icons.more_vert),
                  subtitle: Text(
                      "This is subtitle. Subtitle is very long and use three lines."),
                  onTap: () {},
                  isThreeLine: true,
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.people),
                  title: Text("ListTile with dense true"),
                  trailing: Icon(Icons.more_vert),
                  subtitle: Text("This is subtitle."),
                  onTap: () {},
                  dense: true,
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.people),
                  title: Text("ListTile with enabled false"),
                  trailing: Icon(Icons.more_vert),
                  subtitle: Text("This is subtitle."),
                  enabled: false,
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.people),
                  title: Text("ListTile with selected true"),
                  trailing: Icon(Icons.more_vert),
                  subtitle: Text("This is subtitle."),
                  selected: true,
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.people),
                  title: Text("ListTile with contentPadding all 10.0"),
                  trailing: Icon(Icons.more_vert),
                  subtitle: Text("This is subtitle."),
                  onTap: () {},
                  contentPadding: EdgeInsets.all(10.0),
                ),
              ),
              Card(
                child: CheckboxListTile(
                  value: _isCheckboxChecked,
                  onChanged: (value) {
                    setState(() => _isCheckboxChecked = value);
                  },
                  title: Text("CheckboxListTile"),
                  subtitle: Text("This is a subtitle"),
                  secondary: Icon(Icons.people),
                  activeColor: Colors.blue,
                  selected: _isCheckboxChecked,
                ),
              ),
              Card(
                child: RadioListTile<People>(
                  value: People.Json,
                  groupValue: _people,
                  onChanged: (value) {
                    setState(() => _people = value);
                  },
                  title: Text("RadioListTile Json"),
                  subtitle: Text("This is a subtitle"),
                  secondary: Icon(Icons.people),
                  activeColor: Colors.red,
                ),
              ),
              Card(
                child: RadioListTile<People>(
                  value: People.Mary,
                  groupValue: _people,
                  onChanged: (value) {
                    setState(() => _people = value);
                  },
                  title: Text("RadioListTile Mary"),
                  subtitle: Text("This is a subtitle"),
                  secondary: Icon(Icons.people),
                  activeColor: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
