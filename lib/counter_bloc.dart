import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio1/counter_event.dart';
import 'package:portfolio1/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  void onIncrement() {
    add(IncrementEvent());
  }

  void onDecrement() {
    add(DecrementEvent());
  }

  @override
  CounterState get initialState => CounterState.initial();

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    final _currentState = currentState;
    if (event is IncrementEvent) {
      yield CounterState(counter: currentState + 1);
    } else if (event is DecrementEvent) {
      yield CounterState(counter: currentState + 1);
    }
  }
}
