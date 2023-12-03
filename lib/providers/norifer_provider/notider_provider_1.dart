import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Creates a [TodoList] and initialise it with pre-defined values.
///
/// We are using [StateNotifierProvider] here as a `List<Todo>` is a complex
/// object, with advanced business logic like how to edit a todo.
/// 
final todoListProvider = NotifierProvider<TodoList, List<Todo>>(TodoList.new);

class Todo {
  const Todo({
    required this.description,
    required this.id,
    this.completed = false,
  });

  final String id;
  final String description;
  final bool completed;

  @override
  String toString() {
    return 'Todo(description: $description, completed: $completed)';
  }
}


/// An object that controls a list of [Todo].
class TodoList extends Notifier<List<Todo>> {
  @override
  List<Todo> build() => [
        const Todo(id: 'todo-0', description: 'Buy cookies'),
        const Todo(id: 'todo-1', description: 'Star Riverpod'),
        const Todo(id: 'todo-2', description: 'Have a walk'),
      ];

  void add(String description) {
    state = [
      ...state,
      Todo(
        id: '2332423',
        description: description,
      ),
    ];
  }

  void toggle(String id) {
    state = [
      for (final todo in state)
        if (todo.id == id)
          Todo(
            id: todo.id,
            completed: !todo.completed,
            description: todo.description,
          )
        else
          todo,
    ];
  }

  void edit({required String id, required String description}) {
    state = [
      for (final todo in state)
        if (todo.id == id)
          Todo(
            id: todo.id,
            completed: todo.completed,
            description: description,
          )
        else
          todo,
    ];
  }

  void remove(Todo target) {
    state = state.where((todo) => todo.id != target.id).toList();
  }
}
