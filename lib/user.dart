import 'package:flutter_riverpod/flutter_riverpod.dart';

class User {
  String name;
  int age;

  User({required this.name, required this.age});
}

class UserNotifier extends StateNotifier<User> {
  UserNotifier(super.state);

  void updateName(String val) {
    state = User(name: val, age: 5);
  }
}

class UserName extends StateNotifier<String> {
  UserName(super._state);

  void updateUser(String val) {
    state = val;
  }
}
