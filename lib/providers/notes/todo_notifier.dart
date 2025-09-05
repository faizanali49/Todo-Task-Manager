import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/views/widgets/model.dart';

class TodoNotifier extends StateNotifier<List<Todo>> {
  TodoNotifier() : super([]);

  void addTodo(Todo todo) {
    // final newTodos = Todo(title: todo.title, description: todo.description);
    state = [...state, todo];
  }

  void removetodo(index) {
    if (state.isNotEmpty) {
      state = [...state..removeAt(index)];
    }
  }
}
