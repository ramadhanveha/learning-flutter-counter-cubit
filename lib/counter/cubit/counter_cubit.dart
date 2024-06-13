import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);

  void decrement() {
    emit(state - 1);
  }

  void reset() {
    emit(0);
  }

  void multiply() {
    emit(state * 2);
  }

  void decreaseByTwo() {
    emit(state - 2);
  }

  void counterFive() {
    if (state % 5 == 0) {}
  }
}
