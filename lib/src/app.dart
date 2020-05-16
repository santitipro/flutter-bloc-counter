import 'package:flutter/material.dart';
import 'package:counter_bloc/src/screens/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(), title: 'Welcome to Flutter', home: Home());
  }
}
