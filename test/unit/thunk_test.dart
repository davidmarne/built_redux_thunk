import 'dart:async';

import 'package:built_redux/built_redux.dart';
import 'package:built_redux_thunk/built_redux_thunk.dart';
import 'package:test/test.dart';

import 'test_counter.dart';

void main() {
  group('redux', () {
    Store<TestCounter, TestCounterBuilder, TestCounterActions> store;
    setup() {
      var actions = new TestCounterActions();
      var defaultValue = new TestCounter();

      var middleware =
          <Middleware<TestCounter, TestCounterBuilder, TestCounterActions>>[
        thunkMiddleware,
      ];

      store = new Store(
        createReducer(),
        defaultValue,
        actions,
        middleware: middleware,
      );
    }

    tearDown(() {
      store.dispose();
    });

    test('async action updates state', () async {
      setup();
      store.actions.thunkDispatcher(asyncIncrement(3));
      var stateChange = await store.stream.first;
      expect(stateChange.prev.count, 1);
      expect(stateChange.next.count, 4);
    });
  });
}

Thunk<TestCounter, TestCounterBuilder, TestCounterActions> asyncIncrement(
        int number) =>
    (mw) {
      new Future.delayed(const Duration(milliseconds: 200), () {
        mw.actions.increment(number);
      });
    };
