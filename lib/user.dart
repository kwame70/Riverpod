import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@immutable
class User {
  final String name;
  final int age;

  const User({required this.name, required this.age});

  User copyWith({String? name, int? age}) =>
      User(name: name ?? this.name, age: age ?? this.age);
}

class UserNotifier extends StateNotifier<User> {
  UserNotifier(super.state);

  void updateName(String val) {
    state = state.copyWith(name: val);
  }
}

class UserName extends StateNotifier<String> {
  UserName(super._state);

  void updateUser(String val) {
    state = val;
  }
}
