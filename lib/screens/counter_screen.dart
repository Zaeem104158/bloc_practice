import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/counter_bloc/counter_bloc.dart';
import 'package:todo/bloc/counter_bloc/counter_event.dart';
import 'package:todo/bloc/counter_bloc/counter_state.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Counter"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
              return Center(
                child: Text(
                  state.counter.toString(),
                  style: const TextStyle(fontSize: 60),
                ),
              );
            }),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(
                            IncrementCounter(),
                          );
                    },
                    child: const Text("Increment")),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(
                            DecrementCounter(),
                          );
                    },
                    child: const Text("Decrement"))
              ],
            ),
          ],
        ));
  }
}
