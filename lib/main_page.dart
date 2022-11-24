import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_learn/provider.dart';
import 'package:flutter_riverpod_learn/second_page.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ref.watch(nameProvider),
              style: TextStyle(fontSize: 25.0),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ),
                );
              },
              child: const Text('Go to Second page'),
            ),
          ],
        ),
      ),
    );
  }
}

// class MainPage extends ConsumerStatefulWidget {
//   const MainPage({super.key});

//   @override
//   ConsumerState<MainPage> createState() => _MainPageState();
// }

// class _MainPageState extends ConsumerState<MainPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Main Page'),
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
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => SecondPage(),
//                   ),
//                 );
//               },
//               child: const Text('Go to Second page'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
