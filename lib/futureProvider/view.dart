import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/futureProvider/model.dart';
import 'package:todo/futureProvider/provider.dart';

class Books extends StatelessWidget {
  const Books({super.key});

  @override
  Widget build(BuildContext context) {
    // String name = ""; // Replace with actual name
    TextEditingController nameEditingController = TextEditingController();
    print('rebuild');

    return Scaffold(
      appBar: AppBar(title: const Text("Random User Explorer")),
      body: Column(
        children: [
          TextField(
            autocorrect: true,

            decoration: InputDecoration(
              hintText: "Enter a name",
              border: OutlineInputBorder(),
            ),
            controller: nameEditingController,
            // onChanged: (value) {
            //   ref.read(nameProvider.notifier).state = value;

            // },
          ),
          Consumer(
            builder: (context, ref, child) {
            child: TextButton(
              onPressed: () {
                // ref.refresh(futureProviders(ref.read(nameProvider.notifier).state));
                ref.read(nameProvider.notifier).state =
                    nameEditingController.text;
              },
              child: const Text("Search"),
            );
          }),
          Consumer(
            builder: (context, ref, child) {
              final userAsync = ref.watch(futureProviders(ref.watch(nameProvider)));
              return userAsync.when(
                data: (user) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    const SizedBox(height: 10),
                    Text(
                      user,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              },
              loading: () => Center(child: const CircularProgressIndicator()),
              error: (err, _) => Text("Error: No record found"),
            );}
          ),
        ],
      ),
    );
  }
}
