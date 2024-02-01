import 'package:flutter/material.dart';
import 'package:proj/home/Home.dart';
import 'package:proj/resources/resource.dart';

class tabs extends StatefulWidget {
  const tabs({super.key});
  @override
  State<tabs> createState() => _tabsState();
}

int _selectedPageIndex = 0;

void _selectedPage(int index) {
  setState(() {
    _selectedPageIndex = index;
  });
}

void setState(Null Function() param0) {}

class _tabsState extends State<tabs> {
  @override
  Widget build(BuildContext context) {
    Widget activePage = const Home();
    var activePageTitle = "Home";

    if (_selectedPageIndex == 1) {
      activePage = const resource();
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("education ")),
        body: Home(),
      ),
    );
  }
}
