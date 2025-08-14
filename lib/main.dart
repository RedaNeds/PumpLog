import 'package:flutter/material.dart';

void main() {
  runApp(const PumpLogApp());
}

class PumpLogApp extends StatelessWidget {
  const PumpLogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PumpLog',
      theme: ThemeData(useMaterial3: true),
      home: const Scaffold(
        body: Center(child: Text('PumpLog')), // placeholder
      ),
    );
  }
}
