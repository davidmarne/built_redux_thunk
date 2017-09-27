// GENERATED CODE - DO NOT MODIFY BY HAND

part of test_counter;

// **************************************************************************
// Generator: BuiltValueGenerator
// **************************************************************************

// ignore_for_file: annotate_overrides
class _$TestCounter extends TestCounter {
  @override
  final int count;
  @override
  final BuiltList<int> indexOutOfRangeList;

  factory _$TestCounter([void updates(TestCounterBuilder b)]) =>
      (new TestCounterBuilder()..update(updates)).build();

  _$TestCounter._({this.count, this.indexOutOfRangeList}) : super._() {
    if (count == null) throw new ArgumentError.notNull('count');
    if (indexOutOfRangeList == null)
      throw new ArgumentError.notNull('indexOutOfRangeList');
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
    return count == other.count &&
        indexOutOfRangeList == other.indexOutOfRangeList;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, count.hashCode), indexOutOfRangeList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TestCounter')
          ..add('count', count)
          ..add('indexOutOfRangeList', indexOutOfRangeList))
        .toString();
  }
}

class TestCounterBuilder implements Builder<TestCounter, TestCounterBuilder> {
  _$TestCounter _$v;

  int _count;
  int get count => _$this._count;
  set count(int count) => _$this._count = count;

  ListBuilder<int> _indexOutOfRangeList;
  ListBuilder<int> get indexOutOfRangeList =>
      _$this._indexOutOfRangeList ??= new ListBuilder<int>();
  set indexOutOfRangeList(ListBuilder<int> indexOutOfRangeList) =>
      _$this._indexOutOfRangeList = indexOutOfRangeList;

  TestCounterBuilder();

  TestCounterBuilder get _$this {
    if (_$v != null) {
      _count = _$v.count;
      _indexOutOfRangeList = _$v.indexOutOfRangeList?.toBuilder();
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
    final _$result = _$v ??
        new _$TestCounter._(
            count: count, indexOutOfRangeList: indexOutOfRangeList?.build());
    replace(_$result);
    return _$result;
  }
}

// **************************************************************************
// Generator: BuiltReduxGenerator
// **************************************************************************

class _$TestCounterActions extends TestCounterActions {
  final ActionDispatcher<Thunk> incrementAsync =
      new ActionDispatcher<Thunk>('TestCounterActions-incrementAsync');

  final ActionDispatcher<int> increment =
      new ActionDispatcher<int>('TestCounterActions-increment');
  factory _$TestCounterActions() => new _$TestCounterActions._();

  _$TestCounterActions._() : super._();

  @override
  void syncWithStore(Dispatcher dispatcher) {
    incrementAsync.syncWithStore(dispatcher);
    increment.syncWithStore(dispatcher);
  }
}

class TestCounterActionsNames {
  static final ActionName<Thunk> incrementAsync =
      new ActionName<Thunk>('TestCounterActions-incrementAsync');
  static final ActionName<int> increment =
      new ActionName<int>('TestCounterActions-increment');
}

abstract class TestCounterReducer
    implements BuiltReducer<TestCounter, TestCounterBuilder> {
  Map<String, Reducer<dynamic, TestCounter, TestCounterBuilder>> get reducer =>
      null;

  void reduce(
      TestCounter state, Action<dynamic> a, TestCounterBuilder builder) {
    if (reducer != null) {
      final handler = reducer[a.name];
      if (handler != null) handler(state, a, builder);
    }
    reduceChildren(state, a, builder);
  }

  void reduceChildren(
      TestCounter state, Action<dynamic> a, TestCounterBuilder builder) {}
}
