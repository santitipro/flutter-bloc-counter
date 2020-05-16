import 'package:flutter/material.dart';
import 'package:counter_bloc/src/screens/counter.dart';

class Home extends StatelessWidget {
  void _pushScreen(BuildContext context, Widget screen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => screen));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bloc example')),
      body: ListView(
        children: <Widget>[
          ListTile(
              leading: Icon(Icons.add_circle_outline),
              title: Text('Counter'),
              trailing: Chip(
                label: Text('Local State'),
                backgroundColor: Colors.blue[800],
              ),
              onTap: () => _pushScreen(context, Counter()))
        ],
      ),
    );
  }
}
