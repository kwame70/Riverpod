import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_statemanagement/home_screen.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_statemanagement/user.dart';

//Types of providers in riverpod
//Provider
//StateProvider
//StateNotifier and StateNotifierProvider
//ChangeNotifierProvider - not recommended
//FutureProvider

final fetchUserProvider = FutureProvider((ref) {
  const url = "https://jsonplaceholder.typicode.com/users/1";

  return http.get(Uri.parse(url)).then((value) => User.fromJson(value.body));
});

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
