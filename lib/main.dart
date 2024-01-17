import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_statemanagement/home_screen.dart';

//Types of providers in riverpod
//Provider
//StateProvider

final greetingsProvider =
    Provider<String>((ref) => "Welcome to State management");

final nameProvider = StateProvider<String?>((ref) => " ");

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Riverpod",
      home: HomeScreen(),
    );
  }
}
