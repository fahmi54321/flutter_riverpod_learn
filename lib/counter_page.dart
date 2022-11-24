import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_learn/counter_provider.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int number = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$number',
              style: const TextStyle(fontSize: 30.0),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                ref.read(counterProvider.notifier).state += 1;
              },
              child: const Text('Increment'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // untuk hapus state ketika event tidak digunakan
                ref.invalidate(counterProvider);
              },
              child: const Text('Reset (Invalidate)'),
            ),
          ],
        ),
      ),
    );
  }
}
