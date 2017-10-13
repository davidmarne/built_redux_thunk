// GENERATED CODE - DO NOT MODIFY BY HAND

part of test_counter;

// **************************************************************************
// Generator: BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

class _$TestCounter extends TestCounter {
  @override
  final int count;

  factory _$TestCounter([void updates(TestCounterBuilder b)]) =>
      (new TestCounterBuilder()..update(updates)).build();

  _$TestCounter._({this.count}) : super._() {
    if (count == null) throw new ArgumentError.notNull('count');
  }

  @override
  TestCounter rebuild(void updates(TestCounterBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TestCounterBuilder toBuilder() => new TestCounterBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! TestCounter) return false;
    return count == other.count;
  }

  @override
  int get hashCode {
    return $jf($jc(0, count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TestCounter')..add('count', count))
        .toString();
  }
}

class TestCounterBuilder implements Builder<TestCounter, TestCounterBuilder> {
  _$TestCounter _$v;

  int _count;
  int get count => _$this._count;
  set count(int count) => _$this._count = count;

  TestCounterBuilder();

  TestCounterBuilder get _$this {
    if (_$v != null) {
      _count = _$v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestCounter other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$TestCounter;
  }

  @override
  void update(void updates(TestCounterBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TestCounter build() {
    final _$result = _$v ?? new _$TestCounter._(count: count);
    replace(_$result);
    return _$result;
  }
}

// **************************************************************************
// Generator: BuiltReduxGenerator
// **************************************************************************

class _$TestCounterActions extends TestCounterActions {
  final ActionDispatcher<
          Thunk<TestCounter, TestCounterBuilder, TestCounterActions>>
      thunkDispatcher = new ActionDispatcher<
              Thunk<TestCounter, TestCounterBuilder, TestCounterActions>>(
          'TestCounterActions-thunkDispatcher');

  final ActionDispatcher<int> increment =
      new ActionDispatcher<int>('TestCounterActions-increment');
  factory _$TestCounterActions() => new _$TestCounterActions._();

  _$TestCounterActions._() : super._();

  @override
  void setDispatcher(Dispatcher dispatcher) {
    thunkDispatcher.setDispatcher(dispatcher);
    increment.setDispatcher(dispatcher);
  }
}

class TestCounterActionsNames {
  static final ActionName<
          Thunk<TestCounter, TestCounterBuilder, TestCounterActions>>
      thunkDispatcher = new ActionName<
              Thunk<TestCounter, TestCounterBuilder, TestCounterActions>>(
          'TestCounterActions-thunkDispatcher');
  static final ActionName<int> increment =
      new ActionName<int>('TestCounterActions-increment');
}
