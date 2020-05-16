import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:counter_bloc/src/blocs/my_bloc_delegate.dart';
import 'src/app.dart';

void main() {
  BlocSupervisor.delegate = MyBlocDelegate();
  runApp(App());
}