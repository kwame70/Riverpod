import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_statemanagement/main.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(fetchUserProvider).when(
      data: (data) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Riverpod State management"),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              children: [
                Text(data.name),
                const SizedBox(
                  height: 10,
                ),
                Text(data.email),
              ],
            ),
          ),
        );
      },
      error: (error, stackTrace) {
        return Scaffold(
            body: Center(
          child: Text(error.toString()),
        ));
      },
      loading: () {
        return const Scaffold(
          body: Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
