## Thunks

By adding the thunkMiddleware to any of your built_redux stores, any action dispatched
that's payload meets the typedef signature ```dynamic thunk(MiddlewareApi api)```
will be called.

### Example

Create a function that returns a thunk configured with an url,
that dispatches an action (`onRequestResolved`) in async code:

```dart
dynamic httpRequestThunk(String url) => (MiddlewareApi api) {
  // call the web server asynchronously.
  HttpRequest.getString(url)
      .then((api.actions as CounterActions).onRequestResolved);
};
```

Add an thunk dispatcher to your ReduxActions:

```dart
abstract class CounterActions extends ReduxActions {
  ActionDispatcher<Thunk> thunkDispatcher;
  ActionDispatcher<String> onRequestResolved;

  // factory to create on instance of the generated implementation of CounterActions
  CounterActions._();
  factory CounterActions() => new _$CounterActions();
}
```

The action with `Thunk` isn't mapped to a reducer.

Register the `Thunk` middleware:

```dart
var store = new Store<Counter, CounterBuilder, CounterActions>(
  createReducer(),
  new Counter(),
  new CounterActions(),
  middleware: <Middleware<TestCounter, TestCounterBuilder, TestCounterActions>>[
    thunkMiddleware
  ],
);
```

Dispatch the thunk

```dart
store.actions.thunkDispatcher(httpRquestThunk('http://example.com/'));
```
