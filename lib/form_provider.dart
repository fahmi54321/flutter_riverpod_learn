import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_learn/model/person.dart';

class FormProvider extends StateNotifier<Person> {
  FormProvider()
      : super(
          Person(
            name: 'no name',
            age: 0,
          ),
        );

  void changeName(String name) => state = state.copyWith(name: name);

  void birthday() => state = state.copyWith(age: state.age + 1);
}

final formProvider = StateNotifierProvider<FormProvider, Person>(
  (ref) => FormProvider(),
);
