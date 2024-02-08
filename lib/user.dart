import 'dart:convert';

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
