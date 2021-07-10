
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'current_score.dart';
import 'info.dart';

class InheritedWidgetExample extends StatefulWidget {

  @override
  _InheritedWidgetExampleState createState() => _InheritedWidgetExampleState();
}

class _InheritedWidgetExampleState extends State<InheritedWidgetExample> {

  final Random _random = Random();
  int _score = 10;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Info(
            score: _score,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.score),
                CurrentScore(),
              ],
            ),
          ),
          OutlinedButton(
            child: const Text('Change'),
            onPressed: () {
              setState(() {
                _score = _random.nextInt(100);
              });
            },
          ),
        ],
      ),
    );
  }
}