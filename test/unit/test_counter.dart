library test_counter;

import 'package:built_redux/built_redux.dart';
import 'package:built_redux_thunk/built_redux_thunk.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';

part 'test_counter.g.dart';


abstract class TestCounterActions extends ReduxActions {
  ActionDispatcher<int> get increment;
  ActionDispatcher<Thunk> get incrementAsync;

  TestCounterActions._();
  factory TestCounterActions() => new _$TestCounterActions();
}

_increment(
        TestCounter state, Action<int> action, TestCounterBuilder builder) =>
    builder..count = state.count + action.payload;

final _baseReducer = (new ReducerBuilder<TestCounter, TestCounterBuilder>()
      ..add(TestCounterActionsNames.increment, _increment))
    .build();

// Built Reducer
abstract class TestCounter extends Object
    with TestCounterReducer
    implements Built<TestCounter, TestCounterBuilder> {
  int get count;

  BuiltList<int> get indexOutOfRangeList;

  @override
  get reducer => _baseReducer;

  // Built value constructor
  TestCounter._();
  factory TestCounter() => new _$TestCounter._(
        count: 1,
        indexOutOfRangeList: new BuiltList<int>()
      );
}
