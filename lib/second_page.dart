import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_learn/provider.dart';

class SecondPage extends ConsumerWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ref.watch(greetingProvider),
              style: TextStyle(fontSize: 25.0),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go to Second page'),
            ),
          ],
        ),
      ),
    );
  }
}

// class SecondPage extends ConsumerStatefulWidget {
//   const SecondPage({super.key});

//   @override
//   ConsumerState<SecondPage> createState() => _SecondPageState();
// }

// class _SecondPageState extends ConsumerState<SecondPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Second Page'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               ref.watch(nameProvider),
//               style: TextStyle(fontSize: 25.0),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: const Text('Go to Second page'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
