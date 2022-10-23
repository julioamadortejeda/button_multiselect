import 'dart:developer';

import 'package:button_multiselect/button_multiselect.dart';
import 'package:flutter/material.dart';

import 'data_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
