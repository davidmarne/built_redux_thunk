import 'package:built_redux/built_redux.dart';

typedef dynamic Thunk(MiddlewareApi api);

void thunkMiddleware(MiddlewareApi api) => (ActionHandler next) => (Action a) {
      if (a.payload is Thunk) {
        a.payload(api);
      }

      next(a);
    };
