// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'memory_management_state.dart';

class MemoryManagementStateMapper
    extends ClassMapperBase<MemoryManagementState> {
  MemoryManagementStateMapper._();

  static MemoryManagementStateMapper? _instance;
  static MemoryManagementStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MemoryManagementStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MemoryManagementState';

  static int _$generation(MemoryManagementState v) => v.generation;
  static const Field<MemoryManagementState, int> _f$generation =
      Field('generation', _$generation, opt: true, def: 0);
  static int _$count(MemoryManagementState v) => v.count;
  static const Field<MemoryManagementState, int> _f$count =
      Field('count', _$count, opt: true, def: 0);

  @override
  final MappableFields<MemoryManagementState> fields = const {
    #generation: _f$generation,
    #count: _f$count,
  };

  static MemoryManagementState _instantiate(DecodingData data) {
    return MemoryManagementState(
        generation: data.dec(_f$generation), count: data.dec(_f$count));
  }

  @override
  final Function instantiate = _instantiate;

  static MemoryManagementState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MemoryManagementState>(map);
  }

  static MemoryManagementState fromJson(String json) {
    return ensureInitialized().decodeJson<MemoryManagementState>(json);
  }
}

mixin MemoryManagementStateMappable {
  String toJson() {
    return MemoryManagementStateMapper.ensureInitialized()
        .encodeJson<MemoryManagementState>(this as MemoryManagementState);
  }

  Map<String, dynamic> toMap() {
    return MemoryManagementStateMapper.ensureInitialized()
        .encodeMap<MemoryManagementState>(this as MemoryManagementState);
  }

  MemoryManagementStateCopyWith<MemoryManagementState, MemoryManagementState,
      MemoryManagementState> get copyWith => _MemoryManagementStateCopyWithImpl<
          MemoryManagementState, MemoryManagementState>(
      this as MemoryManagementState, $identity, $identity);
  @override
  String toString() {
    return MemoryManagementStateMapper.ensureInitialized()
        .stringifyValue(this as MemoryManagementState);
  }

  @override
  bool operator ==(Object other) {
    return MemoryManagementStateMapper.ensureInitialized()
        .equalsValue(this as MemoryManagementState, other);
  }

  @override
  int get hashCode {
    return MemoryManagementStateMapper.ensureInitialized()
        .hashValue(this as MemoryManagementState);
  }
}

extension MemoryManagementStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MemoryManagementState, $Out> {
  MemoryManagementStateCopyWith<$R, MemoryManagementState, $Out>
      get $asMemoryManagementState => $base.as(
          (v, t, t2) => _MemoryManagementStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MemoryManagementStateCopyWith<
    $R,
    $In extends MemoryManagementState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? generation, int? count});
  MemoryManagementStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MemoryManagementStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MemoryManagementState, $Out>
    implements MemoryManagementStateCopyWith<$R, MemoryManagementState, $Out> {
  _MemoryManagementStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MemoryManagementState> $mapper =
      MemoryManagementStateMapper.ensureInitialized();
  @override
  $R call({int? generation, int? count}) => $apply(FieldCopyWithData({
        if (generation != null) #generation: generation,
        if (count != null) #count: count
      }));
  @override
  MemoryManagementState $make(CopyWithData data) => MemoryManagementState(
      generation: data.get(#generation, or: $value.generation),
      count: data.get(#count, or: $value.count));

  @override
  MemoryManagementStateCopyWith<$R2, MemoryManagementState, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _MemoryManagementStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
