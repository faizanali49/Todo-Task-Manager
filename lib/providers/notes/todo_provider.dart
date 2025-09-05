import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/providers/notes/todo_notifier.dart';
import 'package:todo/views/widgets/model.dart';

final todoProvider = StateNotifierProvider<TodoNotifier, List<Todo>>((ref) {
  return TodoNotifier();
});
