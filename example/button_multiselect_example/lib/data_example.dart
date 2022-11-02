import 'package:button_multiselect/button_multiselect.dart';
import 'package:flutter/material.dart';

class TestData {
  String name;
  int age;

  TestData(this.name, this.age);
}

ButtonMultiSelectItem<TestData> _itemTest1 = ButtonMultiSelectItem<TestData>(
  label: 'A large test to show example',
  value: TestData('one', 30),
  icon: Icons.back_hand,
);

ButtonMultiSelectItem<TestData> _itemTest2 = ButtonMultiSelectItem<TestData>(
  label: 'medium text',
  value: TestData('two', 31),
  icon: Icons.access_time_outlined,
);

ButtonMultiSelectItem<TestData> _itemTest3 = ButtonMultiSelectItem<TestData>(
  label: 'test 3',
  value: TestData('three', 22),
  icon: Icons.account_box_outlined,
);

ButtonMultiSelectItem<TestData> _itemTest4 = ButtonMultiSelectItem<TestData>(
  label: 'test 4',
  value: TestData('for', 63),
  icon: Icons.account_box,
);

ButtonMultiSelectItem<TestData> _itemTest5 = ButtonMultiSelectItem<TestData>(
  label: 'test 5',
  value: TestData('five', 12),
  icon: Icons.zoom_in_outlined,
);

ButtonMultiSelectItem<TestData> _itemTest6 = ButtonMultiSelectItem<TestData>(
  label: 'test 6',
  value: TestData('six', 77),
  icon: Icons.accessibility_new_outlined,
);

ButtonMultiSelectItem<TestData> _itemTest7 = ButtonMultiSelectItem<TestData>(
  label: 'test 7',
  value: TestData('seven', 54),
  icon: Icons.ad_units_outlined,
);

ButtonMultiSelectItem<TestData> _itemTest8 = ButtonMultiSelectItem<TestData>(
  label: 'test 8',
  value: TestData('eight', 45),
  icon: Icons.workspace_premium_rounded,
);

List<ButtonMultiSelectItem<TestData>> items = [
  _itemTest1,
  _itemTest2,
  // _itemTest3,
  // _itemTest4,
  // _itemTest5,
  // _itemTest6,
  // _itemTest7,
  // _itemTest8
];

ButtonMultiSelectItem<TestData> _itemTestNoIcon1 =
    ButtonMultiSelectItem<TestData>(
  label: 'a large test to show example',
  value: TestData('one', 77),
);

ButtonMultiSelectItem<TestData> _itemTestNoIcon2 =
    ButtonMultiSelectItem<TestData>(
  label: 'medium text',
  value: TestData('two', 77),
);

ButtonMultiSelectItem<TestData> _itemTestNoIcon3 =
    ButtonMultiSelectItem<TestData>(
  label: 'test 3',
  value: TestData('three', 77),
);

ButtonMultiSelectItem<TestData> _itemTestNoIcon4 =
    ButtonMultiSelectItem<TestData>(
  label: 'test 4',
  value: TestData('for', 77),
);

ButtonMultiSelectItem<TestData> _itemTestNoIcon5 =
    ButtonMultiSelectItem<TestData>(
  label: 'test 5',
  value: TestData('five', 77),
);

ButtonMultiSelectItem<TestData> _itemTestNoIcon6 =
    ButtonMultiSelectItem<TestData>(
  label: 'test 6',
  value: TestData('six', 77),
);

ButtonMultiSelectItem<TestData> _itemTestNoIcon7 =
    ButtonMultiSelectItem<TestData>(
  label: 'test 7',
  value: TestData('seven', 77),
);

ButtonMultiSelectItem<TestData> _itemTestNoIcon8 =
    ButtonMultiSelectItem<TestData>(
  label: 'test 8',
  value: TestData('eight', 77),
);

List<ButtonMultiSelectItem<TestData>> itemsNoIcons = [
  _itemTestNoIcon1,
  _itemTestNoIcon2,
  _itemTestNoIcon3,
  _itemTestNoIcon4,
  _itemTestNoIcon5,
  _itemTestNoIcon6,
  _itemTestNoIcon7,
  _itemTestNoIcon8
];

List<Sizes> sizes = [
  Sizes(size: ButtonSize.small, value: 'Small'),
  Sizes(size: ButtonSize.medium, value: 'Medium'),
  Sizes(size: ButtonSize.large, value: 'Large'),
];

List<Styles> styles = [
  Styles(style: ButtonSelectedStyle.border, value: 'Border'),
  Styles(style: ButtonSelectedStyle.check, value: 'Check'),
  Styles(style: ButtonSelectedStyle.both, value: 'Both'),
];

List<HasIcons> hasIcons = [
  HasIcons(hasIcon: true, value: 'true'),
  HasIcons(hasIcon: false, value: 'false')
];

class Sizes {
  ButtonSize size;
  String value;

  Sizes({required this.size, required this.value});
}

class Styles {
  ButtonSelectedStyle style;
  String value;

  Styles({required this.style, required this.value});
}

class HasIcons {
  bool hasIcon;
  String value;

  HasIcons({required this.hasIcon, required this.value});
}
