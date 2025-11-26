import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/riverpod.dart';

class TodoPage extends ConsumerWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo Page')),
      body: Column(
        children: [
          Text(
            ref.watch(riverpodEasyLevel).toString(),
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(riverpodEasyLevel.notifier).state--;
            },
            child: const Text("remove"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(riverpodEasyLevel.notifier).state++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
