library test_counter;

import 'package:built_redux/built_redux.dart';
import 'package:built_redux_thunk/built_redux_thunk.dart';
import 'package:built_value/built_value.dart';

part 'test_counter.g.dart';

abstract class TestCounterActions extends ReduxActions {
  ActionDispatcher<int> increment;
  ActionDispatcher<Thunk> thunkDispatcher;

  TestCounterActions._();
  factory TestCounterActions() => new _$TestCounterActions();
}

_increment(TestCounter state, Action<int> action, TestCounterBuilder builder) =>
    builder..count = state.count + action.payload;

Reducer<TestCounter, TestCounterBuilder, dynamic> createReducer() =>
    (new ReducerBuilder<TestCounter, TestCounterBuilder>()
          ..add(TestCounterActionsNames.increment, _increment))
        .build();

// Built Reducer
abstract class TestCounter implements Built<TestCounter, TestCounterBuilder> {
  int get count;

  // Built value constructor
  TestCounter._();
  factory TestCounter() => new _$TestCounter._(count: 1);
}
