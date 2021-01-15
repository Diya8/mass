import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Create Receiver'),
      ),
      body: MyStatefulWidget(),
    );
  }
}
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        margin: EdgeInsets.only(left: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text("Enter receivers name:", style: TextStyle(
                fontSize: 20.0,
              ),
              ),
            ),
            Container(
              width: 200.0,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: '                    john steve',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text("Enter receivers email:", style: TextStyle(
                fontSize: 20.0,
              ),
              ),
            ),
            Container(
              width: 200.0,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: '               xyz@gmail.com',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text("Enter receivers contact no:", style: TextStyle(
                fontSize: 20.0,
              ),
              ),
            ),
            Container(
              width: 200.0,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: '              +91 9374538234',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    onPressed: () {
                      // Validate will return true if the form is valid, or false if
                      // the form is invalid.

                      if (_formKey.currentState.validate()) {
                        // Process data.
                        Navigator.pushNamed(context, '/a_roles');
                      }
                    },
                    child: Text('Create'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}