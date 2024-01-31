import 'package:flutter/material.dart';

class education extends StatefulWidget {
  const education({super.key});
  @override
  State<education> createState() => _educationState();
}

class _educationState extends State<education> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("education ")),
      ),
    );
  }
}
