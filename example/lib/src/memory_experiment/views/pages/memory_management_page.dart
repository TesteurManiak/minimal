import 'dart:async';

import 'package:flutter/material.dart';

import '../../notifiers/memory_management_notifier.dart';

class MemoryManagementPage extends StatefulWidget {
  const MemoryManagementPage({super.key});

  @override
  State<MemoryManagementPage> createState() => _MemoryManagementPageState();
}

class _MemoryManagementPageState extends State<MemoryManagementPage> {
  late final Timer timer;

  @override
  void initState() {
    super.initState();
    // Every second, increment the generation and call setState to re-instanciate the select notifier.
    timer = Timer.periodic(const Duration(seconds: 1), (final timer) {
      memoryManagementManager.notifier.nextGeneration();
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    final notifier = memoryManagementManager.notifier;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Memory Management')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 32,
          children: [
            ListenableBuilder(
              listenable: notifier.select((final state) => state.generation),
              builder: (final context, final child) {
                return Text(
                  'Generation: ${notifier.state.generation}',
                  style: theme.textTheme.headlineMedium,
                );
              },
            ),
            ListenableBuilder(
              listenable: notifier.select((final state) => state.count),
              builder: (final context, final child) {
                return Text(
                  'Count: ${notifier.state.count}',
                  style: theme.textTheme.titleMedium,
                );
              },
            ),
            TextButton(
              onPressed: notifier.increment,
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
