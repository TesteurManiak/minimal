import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/material.dart';
import 'package:minimal_mvn/minimal_mvn.dart';

part 'morphing_widget_ui_state.mapper.dart';

@MappableClass()
class MorphingWidgetUIState extends MMState with MorphingWidgetUIStateMappable {
  const MorphingWidgetUIState({
    this.backgroundColor = Colors.blue,
    this.borderRadius = BorderRadius.zero,
    this.count = 0,
  }) : milestone = count ~/ 10;

  final Color backgroundColor;
  final BorderRadius borderRadius;
  final int count;
  final int milestone;
}
