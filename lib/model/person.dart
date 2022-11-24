// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Person extends Equatable {
  String name;
  int age;
  Person({
    required this.name,
    required this.age,
  });

  Person copyWith({
    String? name,
    int? age,
  }) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  @override
  String toString() => 'Person(name: $name, age: $age)';

  @override
  List<Object> get props => [name, age];
}
