import 'package:flutter/material.dart';

import 'inherited_widget_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Woolha.com Flutter Tutorial',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Woolha.com | InheritedWidget Example'),
          backgroundColor: Colors.teal,
        ),
        body: InheritedWidgetExample(),
      ),
    );
  }
}