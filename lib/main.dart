import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_statemanagement/home_screen.dart';
import 'package:riverpod_statemanagement/user.dart';

//Types of providers in riverpod
//Provider
//StateProvider
//StateNotifier and StateNotifierProvider
//ChangeNotifierProvider - not recommended

final greetingsProvider =
    Provider<String>((ref) => "Welcome to State management");

final nameProvider = StateProvider<String?>((ref) => " ");

final userProvider =
    StateNotifierProvider<UserNotifier, User>((ref) => UserNotifier(
          (const User(name: "Bob", age: 12)),
        ));

// final userNameProvider = StateNotifierProvider<UserName, String>(
//   (ref) => UserName(""),
// );

final userChangeNotifierProvider =
    ChangeNotifierProvider((ref) => UserNotifierChange());

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
