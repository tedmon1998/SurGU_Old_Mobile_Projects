extension ListExtension<T> on List<T> {
  T? get firstOrNull => isNotEmpty ? first : null;

  Map<R, List<T>> groupBy<R>(R Function(T) key) {
    final result = <R, List<T>>{};
    for (final item in this) {
      (result[key(item)] ??= []).add(item);
    }
    return result;
  }

  bool containsAll(Iterable<Object?> other) {
    for (final object in other) {
      if (!contains(object)) return false;
    }
    return true;
  }
}

extension IterableExtension<T> on Iterable<T> {
  List<E> mapToList<E>(E Function(T e) toElement, {bool growable = false}) =>
      map<E>(toElement).toList(growable: growable);
}

extension ListNullExtension<T> on List<T>? {
  List<T> get orEmpty => this == null ? List.empty(growable: false) : this!;

  bool get isListEmpty => this?.isEmpty ?? true;

  bool get isListNotEmpty => !isListEmpty;
}
