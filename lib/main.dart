// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todolist/screens/tasks_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,  // Hide debug banner
      title: 'Todo App',  // Set app title
      theme: ThemeData(  // Configure app theme
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: const Color(0xFF151F30)),  // Set primary color
        useMaterial3: true,  // Enable Material 3 design elements
      ),
      home: TasksScreen(),  // Set home screen to TasksScreen
    );
  }
}
