import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});
  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("profile ")),
      ),
    );
  }
}
