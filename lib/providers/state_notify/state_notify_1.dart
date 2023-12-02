import 'package:flutter_riverpod/flutter_riverpod.dart';

/// The currently active filter.
///
/// We use [StateProvider] here as there is no fancy logic behind manipulating
/// the value since it's just enum.
final todoListFilter = StateProvider((_) => TodoListFilter.all);

/// The different ways to filter the list of todos
enum TodoListFilter {
  all,
  active,
  completed,
}