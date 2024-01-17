import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_statemanagement/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void onChanged(WidgetRef ref, String value) {
    ref.read(nameProvider.notifier).update((state) => value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Riverpod State management"),
        centerTitle: true,
      ),
      body: Consumer(builder: (context, ref, child) {
        final greetings = ref.watch(greetingsProvider);

        final name = ref.watch(nameProvider) ?? "";
        return Center(
          child: Column(
            children: [
              Text("Hey!$name $greetings"),
              const SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (value) => onChanged(ref, value),
              ),
            ],
          ),
        );
      }),
    );
  }
}
