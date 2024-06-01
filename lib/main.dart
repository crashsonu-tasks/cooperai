// All Flutter Built-in Imports Here.
import 'package:cooperai/views/chat/view.dart';
import 'package:cooperai/views/plan/view.dart';
import 'package:flutter/material.dart';

// All Custom Imports Here.

// All Native Imports Here.
import 'package:cooperai/views/home/view.dart';

// All Attributes or Constants Here.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PlanView(),
    );
  }
}
