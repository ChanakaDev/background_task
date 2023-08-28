// ignore_for_file: avoid_print

import 'dart:async';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Background Task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Background Task",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            print(await compute(testFunction, ""));
          },
          child: const Text(
            "Start Timer",
          ),
        ),
      ),
    );
  }
}

Future<String> testFunction(String s) async {
  Timer timer = Timer(const Duration(seconds: 15), () {
    print("Timer Finished");
  });

  await Future.delayed(const Duration(seconds: 15));

  return "Anything";
}
