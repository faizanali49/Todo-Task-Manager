import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/providers/notes/todo_provider.dart';
import 'package:todo/views/widgets/model.dart';

class AddTodo extends ConsumerWidget {
  const AddTodo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController titleController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();
    // final todo = ref.watch(todoProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('AddTodo')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(labelText: 'Title'),
          ),
          TextField(
            controller: descriptionController,
            decoration: InputDecoration(labelText: 'Description'),
          ),
          ElevatedButton(
            onPressed: () {
              if (titleController.text.isEmpty ||
                  descriptionController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Please enter a title and description'),
                  ),
                );
                return;
              }
              ref
                  .read(todoProvider.notifier)
                  .addTodo(
                    Todo(
                      title: titleController.text,
                      description: descriptionController.text,
                    ),
                  );

              GoRouter.of(context).pop();
            },
            child: const Text('Add Note'),
          ),
          // Here you can add your form or input fields to add a todo
        ],
      ),
    );
  }
}
