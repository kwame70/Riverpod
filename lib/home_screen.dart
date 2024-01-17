import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_statemanagement/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Riverpod State management"),
        centerTitle: true,
      ),
      body: Consumer(builder: (context, ref, child) {
        final greetings = ref.watch(greetingsProvider);
        return Center(
          child: Text("Hey! $greetings"),
        );
      }),
    );
  }
}
