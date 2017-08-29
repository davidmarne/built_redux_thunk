## Thunks

By adding the thunkMiddleware to any of your built_redux stores, any action dispatched
that's payload meets the typedef signature ```dynamic thunk(MiddlewareApi api)```
will be called.
