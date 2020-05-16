import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counter_bloc/src/blocs/counter_bloc.dart';
import 'package:counter_bloc/src/widgets/action_button.dart';

class Counter extends StatefulWidget {
  CounterState createState() => CounterState();
}

class CounterState extends State<Counter> {
  CounterBloc _counterBlock;

  @override
  void initState() {
    super.initState();
    _counterBlock = CounterBloc();
  }

  @override
  void dispose() {
    _counterBlock.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter - Local state")),
      body: Center(child: BlocBuilder<CounterBloc, int>(
        bloc: _counterBlock,
        builder: (context, count) {
          return Text('$count',
              style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold));
        },
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ActionButton(
              iconData: Icons.add,
              onPressed: () =>  _counterBlock.add(CounterEvent.increment),
            ),
            ActionButton(
              iconData: Icons.remove,
              onPressed: () => _counterBlock.add(CounterEvent.decrement),
            ),
            ActionButton(
              iconData: Icons.replay,
              onPressed: () => _counterBlock.add(CounterEvent.reset),
            )
          ],
        ),
      ),
    );
  }
}
