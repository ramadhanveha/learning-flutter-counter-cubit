import 'package:bloc/bloc.dart';
import 'package:flutter_counter_cubit/counter/cubit/counter_cubit.dart';
import 'package:flutter_counter_cubit/counter_observer.dart';

export 'cubit/counter_cubit.dart';
export 'view/counter_page.dart';

void main() {
  Bloc.observer = const CounterObserver();

  CounterCubit counter = CounterCubit();

  counter.decrement();
  counter.decrement();
}
