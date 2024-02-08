import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

@immutable
class User {
  final String name;
  final String email;

  const User({required this.name, required this.email});

  // User copyWith({String? name, int? age}) =>
  //     User(name: name ?? this.name, age: age ?? this.age);

  factory User.fromMap(Map<String, dynamic> map) {
    return User(name: map["name"] ?? "", email: map["email"] ?? "");
  }

  factory User.fromJson(String source) => User.fromMap(jsonDecode(source));
}

final userRepositoryProvider = Provider((ref) => UserRepository());

class UserRepository {
  Future<User> fetchUserData() {
    const url = "https://jsonplaceholder.typicode.com/users/1";

    return http.get(Uri.parse(url)).then((value) => User.fromJson(value.body));
  }
}
