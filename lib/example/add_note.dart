import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/example/model.dart';
import 'package:todo/example/provider_class.dart';
import 'package:todo/views/widgets/model.dart';

class Noteadd extends ConsumerWidget {
  const Noteadd({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final title = ref.watch(listprovider);
    TextEditingController contentController = TextEditingController();
    TextEditingController titleController = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60),
          TextField(
            controller: titleController,
            decoration: InputDecoration(labelText: 'Title'),
            onChanged: (value) {
              // ref.read(listprovider.notifier).state = value;
            },
          ),
          TextField(
            controller: contentController,
            decoration: InputDecoration(labelText: 'Content'),
          ),
          ElevatedButton(
            onPressed: () {
              ref
                  .read(listprovider.notifier)
                  .addItem(ListingModel(id: 1, title: contentController.text));
              Navigator.pop(context);
            },
            child: Text('Add Note'),
          ),
        ],
      ),
    );
  }
}
