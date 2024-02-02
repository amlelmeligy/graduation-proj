import 'package:flutter/material.dart';
import 'package:proj/home/Home.dart';
import 'package:proj/pages.dart/bot.dart';
import 'package:proj/pages.dart/profile.dart';
import 'package:proj/resources/resource.dart';
import 'package:proj/tasks/add_task.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int index = 0;
  final screens = [
    Home(),
    resource(),
    addTask(),
    bot(),
    profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (index) => setState(() => this.index = index),
        height: 60,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home ",
          ),
          NavigationDestination(
            icon: Icon(Icons.book_outlined),
            label: "Education ",
          ),
          NavigationDestination(
            icon: Icon(Icons.add_circle_outline_rounded),
            label: "Create Task ",
          ),
          NavigationDestination(
            icon: Icon(Icons.stacked_bar_chart_rounded),
            label: "Chat Bot",
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
