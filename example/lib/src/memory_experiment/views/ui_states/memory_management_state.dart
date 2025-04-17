import 'package:dart_mappable/dart_mappable.dart';

part 'memory_management_state.mapper.dart';

@MappableClass()
class MemoryManagementState with MemoryManagementStateMappable {
  const MemoryManagementState({
    this.generation = 0,
    this.count = 0,
  });

  final int generation;
  final int count;
}
