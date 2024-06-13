import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_cubit/counter/counter.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text(
              '$state',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            );
          },
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              key: const Key('counterView_increment_fab'),
              heroTag: 'increment',
              backgroundColor: Colors.green,
              child: const Icon(Icons.add),
              onPressed: () {
                context.read<CounterCubit>().increment();
              },
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              key: const Key('counterView_decrement_fab'),
              heroTag: 'decrement',
              backgroundColor: Colors.red,
              child: const Icon(Icons.remove),
              onPressed: () {
                context.read<CounterCubit>().decrement();
              },
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              key: const Key('counterView_multiply_fab'),
              heroTag: 'multiply',
              backgroundColor: Colors.blue,
              child: const Icon(Icons.clear),
              onPressed: () {
                context.read<CounterCubit>().multiply();
              },
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              key: const Key('counterView_decreaseByTwo_fab'),
              heroTag: 'decreaseByTwo',
              backgroundColor: Colors.orange,
              child: const Text(
                '-2',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                context.read<CounterCubit>().decreaseByTwo();
              },
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              key: const Key('counterView_reset_fab'),
              heroTag: 'reset',
              backgroundColor: Colors.purple,
              child: const Icon(Icons.refresh),
              onPressed: () {
                context.read<CounterCubit>().reset();
              },
            ),
          ],
        ),
      ),
    );
  }
}
