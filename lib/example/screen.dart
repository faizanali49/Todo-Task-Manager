import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/example/add_note.dart';
import 'package:todo/example/provider_class.dart';

class Screenone extends ConsumerWidget {
  const Screenone({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notes = ref.watch(listprovider);
    final counter = ref.watch(count);
    List note = [1, '12'];
    return Scaffold(
      appBar: AppBar(title: const Text('Screenone')),
      body: Column(
        children: [
          Text(counter.toString()),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).pushNamed('add_note');
              ref.read(count.notifier).state++;
            },
            child: Text('click'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(
                  notes[index].title,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
