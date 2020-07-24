class CounterState {
  int counter;
  // this is a private constructor, can only be called in the same class
  CounterState._();
  // when the app start, it initiate from here
  // demo of how to use factory, when there more variable to be used
  factory CounterState.initial() {
    return CounterState._()..counter = 0;
  }
}
