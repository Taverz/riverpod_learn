// import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

/// The currently active filter.
///
/// We use [StateProvider] here as there is no fancy logic behind manipulating
/// the value since it's just enum.
/// 
// final todoListFilter = StateProvider((_) => Object.all);

/// The currently active filter.
///
/// We use [StateProvider] here as there is no fancy logic behind manipulating
/// the value since it's just enum.
final todoListFilter = StateProvider((_) => TodoListFilter.all);

final countStateProvider = StateProvider((_) => 0);


/// The different ways to filter the list of todos
enum TodoListFilter {
  all,
  active,
  completed,
}

final todoListFilter2 = StateProvider((_) => Filter2());

class Filter2 {
  TodoListFilter2? filter;
  String? message;

  Filter2({
    this.filter,
    this.message,
  });

  copyWith(
    TodoListFilter2? filter2,
    String? message2,
  ) {
    filter = filter2 ?? filter;
    message = message2 ?? message;
  }
}

/// The different ways to filter the list of todos
enum TodoListFilter2 {
  all,
  active,
  completed,
}

