import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
  final screens = [Home(), resource(), addTask(), ChatBot1(), profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (index) => setState(() => this.index = index),
        height: 70,
        destinations: [
          NavigationDestination(
            icon: Icon(
              Icons.home,
              color: Colors.grey[900],
              size: 27,
            ),
            label: "Home ",
          ),
          NavigationDestination(
            icon: Icon(
              color: Colors.grey[900],
              Icons.book_outlined,
              size: 27,
            ),
            label: "Education ",
          ),
          NavigationDestination(
            icon: Icon(
              color: Colors.grey[900],
              Icons.add_circle_outline_rounded,
              size: 27,
            ),
            label: "Create Task ",
          ),
          NavigationDestination(
            icon: FaIcon(
              Icons.stacked_bar_chart_rounded,
              color: Colors.grey[900],
              size: 27,
            ),
            label: "Chat Bot",
          ),
          NavigationDestination(
            icon: FaIcon(
              color: Colors.grey[900],
              Icons.account_circle,
              size: 27,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
