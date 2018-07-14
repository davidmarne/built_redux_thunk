## Thunks

By adding the thunkMiddleware to any of your built_redux stores, any action dispatched
that's payload meets the typedef signature ```dynamic thunk(MiddlewareApi api)```
will be called.

### Example

Create a function that returns a thunk configured with an url,
that dispatches an action (`onRequestResolved`) in async code:

```dart
// api's type is inferred
Thunk<TestCounter, TestCounterBuilder, TestCounterActions> httpRequestThunk(String url) => (api) {
  // call the web server asynchronously.
  HttpRequest.getString(url)
      .then(api.actions.onRequestResolved);
};
```

Add an thunk dispatcher to your ReduxActions:

```dart
abstract class CounterActions extends ReduxActions {
  ActionDispatcher<Thunk<Counter, CounterBuilder, CounterActions>> thunkDispatcher;
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
