import 'package:button_multiselect/button_multiselect.dart';
import 'package:flutter/material.dart';

class Prueba {
  String nombre;
  int edad;
  double estatura;

  Prueba(this.nombre, this.edad, this.estatura);
}

ButtonMultiSelectItem<Prueba> _itemTest1 = ButtonMultiSelectItem<Prueba>(
  'A large test to show example',
  value: Prueba('uno', 30, 1.54),
  icon: Icons.back_hand,
);

ButtonMultiSelectItem<Prueba> _itemTest2 = ButtonMultiSelectItem<Prueba>(
  'test 2',
  value: Prueba('dos', 31, 1.54),
  icon: Icons.access_time_outlined,
);

ButtonMultiSelectItem<Prueba> _itemTest3 = ButtonMultiSelectItem<Prueba>(
  'test 3',
  value: Prueba('tres', 22, 1.54),
  icon: Icons.account_box_outlined,
);

ButtonMultiSelectItem<Prueba> _itemTest4 = ButtonMultiSelectItem<Prueba>(
  'test 4',
  value: Prueba('cuatro', 63, 1.54),
  icon: Icons.account_box,
);

ButtonMultiSelectItem<Prueba> _itemTest5 = ButtonMultiSelectItem<Prueba>(
  '5',
  value: Prueba('cinco', 12, 1.54),
  icon: Icons.zoom_in_outlined,
);

ButtonMultiSelectItem<Prueba> _itemTest6 = ButtonMultiSelectItem<Prueba>(
  'test 6',
  value: Prueba('seis', 77, 1.54),
  icon: Icons.accessibility_new_outlined,
);

ButtonMultiSelectItem<Prueba> _itemTest7 = ButtonMultiSelectItem<Prueba>(
  'test 7',
  value: Prueba('siete', 54, 1.54),
  icon: Icons.ad_units_outlined,
);

ButtonMultiSelectItem<Prueba> _itemTest8 = ButtonMultiSelectItem<Prueba>(
  'test 8',
  value: Prueba('ocho', 45, 1.54),
  icon: Icons.workspace_premium_rounded,
);

List<ButtonMultiSelectItem<Prueba>> items = [
  _itemTest1,
  _itemTest2,
  _itemTest3,
  _itemTest4,
  _itemTest5,
  _itemTest6,
  _itemTest7,
  _itemTest8
];

ButtonMultiSelectItem<int> _itemTestNoIcon1 = ButtonMultiSelectItem<int>(
  'a large test to show example',
  value: 1,
);

ButtonMultiSelectItem<int> _itemTestNoIcon2 = ButtonMultiSelectItem<int>(
  '2',
  value: 2,
);

ButtonMultiSelectItem<int> _itemTestNoIcon3 = ButtonMultiSelectItem<int>(
  'test 3',
  value: 3,
);

ButtonMultiSelectItem<int> _itemTestNoIcon4 = ButtonMultiSelectItem<int>(
  'test 4',
  value: 4,
);

ButtonMultiSelectItem<int> _itemTestNoIcon5 = ButtonMultiSelectItem<int>(
  'test 5',
  value: 5,
);

ButtonMultiSelectItem<int> _itemTestNoIcon6 = ButtonMultiSelectItem<int>(
  'test 6',
  value: 6,
);

ButtonMultiSelectItem<int> _itemTestNoIcon7 = ButtonMultiSelectItem<int>(
  'test 7',
  value: 7,
);

ButtonMultiSelectItem<int> _itemTestNoIcon8 = ButtonMultiSelectItem<int>(
  'test 8',
  value: 8,
);

List<ButtonMultiSelectItem<int>> itemsint = [
  _itemTestNoIcon1,
  _itemTestNoIcon2,
  _itemTestNoIcon3,
  _itemTestNoIcon4,
  _itemTestNoIcon5,
  _itemTestNoIcon6,
  _itemTestNoIcon7,
  _itemTestNoIcon8
];
