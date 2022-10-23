import 'package:get/get.dart';

class ItemSelectedController<T> extends GetxController {
  final _selectedIndex = <int>[].obs;
  final _selectedItems = <T>[].obs;

  List<int> get selectedIndex => _selectedIndex.value;
  List<dynamic> get selectedIems => _selectedItems.value;

  bool alreadyInList(int index) {
    return _selectedIndex.contains(index);
  }

  void addSelectedIndex(int index) {
    alreadyInList(index)
        ? _selectedIndex.remove(index)
        : _selectedIndex.add(index);
  }

  void addSelectedItem(T item) {
    selectedIems.contains(item)
        ? _selectedItems.remove(item)
        : _selectedItems.add(item);
  }

  T getItem(int index) {
    return _selectedItems[index];
  }
}
