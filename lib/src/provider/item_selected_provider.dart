import 'package:flutter/material.dart';

class ItemSelectedProvider<T> extends ChangeNotifier {
  final _selectedItems = <T>[];

  List<T> get selectedItems => _selectedItems;

  bool isSelected(T item) {
    return _selectedItems.contains(item);
  }

  void addOrRemoveSelectedItem(T item) {
    isSelected(item) ? _selectedItems.remove(item) : _selectedItems.add(item);

    notifyListeners();
  }
}
