import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple/task/controller.dart/task_controller.dart';
import 'package:simple/task/tracker.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TaskController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Tracker(),
    );
  }
}
