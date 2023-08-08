import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod_app/config/helpers/random_generator.dart';

part 'simple_name_provider.g.dart';

@riverpod
String simpleName(SimpleNameRef ref) => RandomGenerator.getRandomName();
