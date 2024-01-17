import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_statemanagement/home_screen.dart';

void main() {
  runApp(const MyApp());
}

//Types of providers in riverpod
//provider
final greetingsProvider =
    Provider<String>((ref) => "Welcome to State management");

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: MaterialApp(
        title: "Riverpod",
        home: HomeScreen(),
      ),
    );
  }
}
