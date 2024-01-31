import 'package:flutter/material.dart';

class bot extends StatefulWidget {
  const bot({super.key});
  @override
  State<bot> createState() => _botState();
}

class _botState extends State<bot> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("bot ")),
      ),
    );
  }
}
