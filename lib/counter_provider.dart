import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider(
  (ref) => 0,
);

// autoDispose untuk hapus state ketika event tidak digunakan
// final counterProvider = StateProvider.autoDispose(
//   (ref) => 0,
// );
