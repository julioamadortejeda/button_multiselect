import 'package:flutter/widgets.dart';

/// A model used to represent a each item
class ButtonMultiSelectItem<T> {
  final T value;
  final String label;
  final IconData? icon;

  ButtonMultiSelectItem({required this.value, required this.label, this.icon});
}
