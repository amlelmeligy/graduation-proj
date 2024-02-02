import 'package:flutter/material.dart';
import 'package:proj/chats/aboutus.dart';
import 'package:proj/home/Home.dart';

// chaaaaaaaaaaaattttttttttt

class chat extends StatelessWidget {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            iconSize: 30,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.cast_for_education), label: 'Education'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.control_point_duplicate_sharp),
                  label: 'Create Task'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.stacked_bar_chart_rounded),
                  label: 'Chat bot'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
            currentIndex: index,
            selectedItemColor: Color.fromARGB(255, 49, 121, 176),
            unselectedItemColor: Colors.grey[800],
            onTap: _changeItem,
          ),
          body: Container(
            color: Color.fromARGB(255, 238, 243, 246),
            padding: EdgeInsets.all(10),
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "community",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.settings,
                        size: 40,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)),
                        labelText: "Let's share your results ",
                        fillColor: Colors.white,
                        filled: true,
                        suffixIcon: Icon(
                          Icons.search,
                        )),
                  ),
                ),
                chatListtile(
                    name: "Sara",
                    email: "What's your opinion?",
                    date: "08:39",
                    imagename: "image1 (1).jpg"),
                chatListtile(
                    name: "Nada",
                    email: "How are you?",
                    date: "07:30",
                    imagename: "image1 (2).jpg"),
                chatListtile(
                    name: "Eman",
                    email: "Hi, i am share my task with you",
                    date: "07:00",
                    imagename: "image1 (3).jpg"),
                chatListtile(
                    name: "Yasmin",
                    email: "I wish you are fine",
                    date: "06:30",
                    imagename: "image1 (4).jpg"),
                chatListtile(
                    name: "Hend",
                    email: "i'm did my math homework",
                    date: "06:01",
                    imagename: "image1 (9).jpg"),
                chatListtile(
                    name: "Yara",
                    email: "i am ganna have a breake",
                    date: "05:30",
                    imagename: "image1 (6).jpg"),
                chatListtile(
                    name: "Laila",
                    email: "No, i am watcing toutube",
                    date: "05:00",
                    imagename: "image1 (7).jpg"),
                chatListtile(
                    name: "Nada",
                    email: "No, i am watcing toutube",
                    date: "05:00",
                    imagename: "image1 (8).jpg"),
                chatListtile(
                    name: "Ahlam",
                    email: "No, i am watcing toutube",
                    date: "05:00",
                    imagename: "image1 (9).jpg"),
              ],
              // )
            ),
          )),
    );
  }

  void _changeItem(int value) {}
}
