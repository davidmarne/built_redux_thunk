import 'package:built_redux/built_redux.dart';
import 'package:built_value/built_value.dart';

typedef dynamic Thunk<
    State extends Built<State, StateBuilder>,
    StateBuilder extends Builder<State, StateBuilder>,
    Actions extends ReduxActions>(MiddlewareApi<State, StateBuilder, Actions> api);

NextActionHandler thunkMiddleware<
            State extends Built<State, StateBuilder>,
            StateBuilder extends Builder<State, StateBuilder>,
            Actions extends ReduxActions>(
        MiddlewareApi<State, StateBuilder, Actions> api) =>
    (ActionHandler next) => (Action a) {
          if (a.payload is Thunk) {
            a.payload(api);
          }

          next(a);
        };
