import 'package:minimal_mvn/minimal_mvn.dart';

import '../views/ui_states/memory_management_state.dart';

class MemoryManagementNotifier extends MMNotifier<MemoryManagementState> {
  MemoryManagementNotifier() : super(const MemoryManagementState());

  void nextGeneration() => notify(
        state.copyWith(generation: state.generation + 1),
      );

  void increment() => notify(state.copyWith(count: state.count + 1));
}

final MMManager<MemoryManagementNotifier> memoryManagementManager =
    MMManager(MemoryManagementNotifier.new, autodispose: true);
