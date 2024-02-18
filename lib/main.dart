import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          gradient: SweepGradient(
            colors: [
              Colors.teal,
              Colors.teal.shade600,
              Colors.teal.shade300,
              Colors.teal.shade400,
              Colors.teal
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Text('Ask Me Anything'),
            centerTitle: true,
          ),
        ),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
