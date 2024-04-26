import 'package:flutter/material.dart';
import 'package:my_app/screens/tasks_screen.dart'; // importing the task_screen.dart
import 'package:flutter_svg/flutter_svg.dart'; // Import for SVG support

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hide debug banner
      title: 'Todo List', // Set app title
      theme: ThemeData(
        // Configure app theme
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(primary: const Color(0xFF883007)), // Set primary color
        useMaterial3: true, // Enable Material 3 design elements
      ),
       // Set home screen to be  TasksScreen
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Todo List'),
          leading: SvgPicture.asset('assets/app_icon.svg'), // Set the app icon here
        ),
        body: const TasksScreen(),
      ),
    );
  }
}
