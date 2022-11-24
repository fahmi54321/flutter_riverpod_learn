import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_learn/form_provider.dart';

class FormPage extends ConsumerWidget {
  FormPage({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(formProvider);
    final age = ref.watch(formProvider.select((form) => form.age));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: 'Ganti nama',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              form.name,
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '$age',
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  ref.read(formProvider.notifier).changeName(controller.text);
                },
                child: const Text('Change Name')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  ref.read(formProvider.notifier).birthday();
                },
                child: const Text('Birthday')),
          ],
        ),
      ),
    );
  }
}
