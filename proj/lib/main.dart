import 'package:flutter/material.dart';
import 'package:proj/home/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

int selectedindex = 0;

class _MyAppState extends State<MyApp> {
  get about_us => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            // appBar: AppBar(
            //     backgroundColor: Color.fromARGB(255, 92, 103, 165),
            //     title: const Text(
            //       "Sign In Page",
            //       style: TextStyle(
            //         color: Color.fromARGB(255, 225, 222, 229),
            //         //  backgroundColor: Colors.grey
            //       ),
            //     )),
            body: Home()));
  }
}
