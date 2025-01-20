import 'package:flutter/material.dart';
import 'package:jobs_app/screens/pages%20navigator/pages_navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PagesNavigator(),
    );
  }
}
