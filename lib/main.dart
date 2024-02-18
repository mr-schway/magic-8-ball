import 'package:flutter/material.dart';
import 'dart:math';

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
          body: const MyApp(),
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
  int picNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            picNum = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$picNum.png'),
      ),
    );
  }
}
