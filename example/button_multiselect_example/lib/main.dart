import 'package:flutter/material.dart';

import 'package:button_multiselect_example/demo_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ButtonMultiSelect Demo',
        theme: ThemeData(primaryColor: Colors.deepPurple),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('ButtonMultiSelect Demo'),
          ),
          body: const DemoWidget(),
        ));
  }
}
