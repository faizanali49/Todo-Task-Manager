import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/providers/notes/todo_provider.dart';
import 'package:todo/providers/style/theme_provider.dart';
import 'package:todo/styles/size_styles.dart';

final searchQueryProvider = StateProvider<String>((ref) => '');

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todo = ref.watch(todoProvider);
    final searchquery = ref.watch(searchQueryProvider);
    final themeMode = ref.watch(themeProvider);
    final filtered = todo.where((todo) {
      return todo.title.toLowerCase().contains(searchquery);
    }).toList();
    final listToShow = searchquery.isEmpty ? todo : filtered;
    print('clicked');

    // final width = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Text('Todo App'),
        ),
        actions: [
          IconButton(
            icon: Icon(
              themeMode == ThemeMode.dark ? Icons.light_mode : Icons.dark_mode,
            ),
            onPressed: () {
              ref
                  .read(themeProvider.notifier)
                  .state = themeMode == ThemeMode.dark
                  ? ThemeMode.light
                  : ThemeMode.dark;
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        // width: double.infinity,
        // padding: EdgeInsets.all(AppSizes.paddingS),
        padding: EdgeInsets.symmetric(horizontal: AppSizes.marginM),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Todo'),

                ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).pushNamed('todo');
                  },
                  child: Text('Add'),
                ),
              ],
            ),
            TextField(
              onChanged: (value) {
                ref.read(searchQueryProvider.notifier).state = value;
              },
              decoration: const InputDecoration(labelText: 'Search'),
            ),

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: listToShow.length,
              itemBuilder: (context, index) {
                final item = listToShow[index];
                return ListTile(
                  title: Text(item.title),
                  subtitle: Text(item.description),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
