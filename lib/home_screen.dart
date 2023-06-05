import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Firebase Auth')),
        body: const Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}