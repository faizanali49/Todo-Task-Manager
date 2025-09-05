import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/add_todo.dart';
import 'package:todo/example/add_note.dart';
import 'package:todo/example/screen.dart';
import 'package:todo/futureProvider/view.dart';
import 'package:todo/main_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => Books()),
    GoRoute(
      name: 'todo',
      path: '/todo',
      builder: (context, state) => AddTodo(),
    ),
    GoRoute(
      name: 'add_note',
      path: '/add_note',
      builder: (context, state) => Noteadd(),
    ),
  ],
);
