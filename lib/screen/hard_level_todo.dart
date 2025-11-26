import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/riverpod.dart';

class HardLevelTodo extends ConsumerWidget {
  const HardLevelTodo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hard Todo Page')),
      body: Column(
        children: [
          Text(
            ref.watch(riverpodHardLevel).counter.toString(),
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(riverpodHardLevel).decrement();
            },
            child: const Text("remove"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(riverpodHardLevel).increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
