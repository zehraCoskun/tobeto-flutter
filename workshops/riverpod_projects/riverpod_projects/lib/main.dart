import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

final counterProvider = StateProvider((ref) => 0);

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(title: const Text('Riverpod Example')),
        body: Center(
          child: Consumer(
            builder: (context, ref, _) {
              final count = ref.watch(counterProvider);
              return Text(
                '$count',
                style: Theme.of(context).textTheme.headlineLarge,
              );
            },
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () => ref.read(counterProvider.notifier).state--,
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: () => ref.read(counterProvider.notifier).state++,
              child: const Icon(Icons.add),
            ),
          ],
        ));
  }
}
