import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod_app/config/helpers/random_generator.dart';

part 'state_provider.g.dart';

@riverpod
class Counter extends _$Counter {
  @override
  int build() => 0;

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}

@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() => true;

  void change() {
    state = !state;
  }
}

@riverpod
class RandomName extends _$RandomName {
  @override
  String build() => RandomGenerator.getRandomName();
}
