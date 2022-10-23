import 'dart:developer';

import 'package:button_multiselect/button_multiselect.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Prueba {
  String nombre;
  int edad;
  double estatura;

  Prueba(this.nombre, this.edad, this.estatura);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ButtonMultiSelectItem<Prueba> item1 = ButtonMultiSelectItem<Prueba>(
      'examplddsdffsdfsfde 1',
      value: Prueba('uno', 30, 1.54),
      icon: Icons.back_hand,
    );

    ButtonMultiSelectItem<Prueba> item2 = ButtonMultiSelectItem<Prueba>(
      'example 2',
      value: Prueba('dos', 31, 1.54),
      icon: Icons.access_time_outlined,
    );

    ButtonMultiSelectItem<Prueba> item3 = ButtonMultiSelectItem<Prueba>(
      'example 3',
      value: Prueba('tres', 22, 1.54),
      icon: Icons.account_box_outlined,
    );

    ButtonMultiSelectItem<Prueba> item4 = ButtonMultiSelectItem<Prueba>(
      'example 4',
      value: Prueba('cuatro', 63, 1.54),
      icon: Icons.account_box,
    );

    ButtonMultiSelectItem<Prueba> item5 = ButtonMultiSelectItem<Prueba>(
      'example 5',
      value: Prueba('cinco', 12, 1.54),
      icon: Icons.zoom_in_outlined,
    );

    ButtonMultiSelectItem<Prueba> item6 = ButtonMultiSelectItem<Prueba>(
      'example 6',
      value: Prueba('seis', 77, 1.54),
      icon: Icons.accessibility_new_outlined,
    );

    ButtonMultiSelectItem<Prueba> item7 = ButtonMultiSelectItem<Prueba>(
      'example 7',
      value: Prueba('siete', 54, 1.54),
      icon: Icons.ad_units_outlined,
    );

    ButtonMultiSelectItem<Prueba> item8 = ButtonMultiSelectItem<Prueba>(
      'example 8',
      value: Prueba('ocho', 45, 1.54),
      icon: Icons.workspace_premium_rounded,
    );

    List<ButtonMultiSelectItem<Prueba>> items = [
      item1,
      item2,
      item3,
      item4,
      item5,
      item6,
      item7,
      item8
    ];

    ButtonMultiSelectItem<int> i1 = ButtonMultiSelectItem<int>(
      'examplddsdffsdfsfde 1',
      value: 1,
      icon: Icons.back_hand,
    );

    ButtonMultiSelectItem<int> i2 = ButtonMultiSelectItem<int>(
      'example 2',
      value: 2,
      icon: Icons.access_time_outlined,
    );

    ButtonMultiSelectItem<int> i3 = ButtonMultiSelectItem<int>(
      'example 3',
      value: 3,
      icon: Icons.account_box_outlined,
    );

    ButtonMultiSelectItem<int> i4 = ButtonMultiSelectItem<int>(
      'example 4',
      value: 4,
      icon: Icons.account_box,
    );

    ButtonMultiSelectItem<int> i5 = ButtonMultiSelectItem<int>(
      'example 5',
      value: 5,
      icon: Icons.zoom_in_outlined,
    );

    ButtonMultiSelectItem<int> i6 = ButtonMultiSelectItem<int>(
      'example 6',
      value: 6,
      icon: Icons.accessibility_new_outlined,
    );

    ButtonMultiSelectItem<int> i7 = ButtonMultiSelectItem<int>(
      'example 7',
      value: 7,
      icon: Icons.ad_units_outlined,
    );

    ButtonMultiSelectItem<int> i8 = ButtonMultiSelectItem<int>(
      'example 8',
      value: 8,
      icon: Icons.workspace_premium_rounded,
    );

    List<ButtonMultiSelectItem<int>> itemsint = [
      i1,
      i2,
      i3,
      i4,
      i5,
      i6,
      i7,
      i8
    ];

    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  ButtonMultiSelect<Prueba>(
                    buttonSize: ButtonSize.small,
                    items: items,
                    tag: 'primero',
                    onSelectedChanged: (data) {
                      inspect(data);
                    },
                    selectedStyle: ButtonSelectedStyle.both,
                    primaryColor: Colors.deepPurple,
                    textColor: Colors.grey.shade900,
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  ButtonMultiSelect<int>(
                    buttonSize: ButtonSize.medium,
                    items: itemsint,
                    onSelectedChanged: (data) {
                      inspect(data);
                    },
                    tag: 'segundo',
                    selectedStyle: ButtonSelectedStyle.both,
                    primaryColor: Colors.deepPurple,
                    textColor: Colors.grey.shade900,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
