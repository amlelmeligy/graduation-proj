import 'package:flutter/material.dart';
import 'package:proj/chats/chat.dart';
import 'package:proj/chats/aboutus.dart';
import 'package:proj/home/about.dart';
import 'package:proj/home/custom.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

List item = [
  {
    "name": "All Tasks",
    "iconname": Icons.task,
  },
  {
    "name": "Favorite ",
    "iconname": Icons.star,
  },
  {
    "name": "Trash",
    "iconname": Icons.restore_from_trash_rounded,
  },
  {
    "name": "Hidden",
    "iconname": Icons.remove_red_eye_sharp,
  },
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
                iconSize: 35,
                selectedItemColor: Colors.blue[900],
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.cast_for_education_rounded,
                      ),
                      label: "Education"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.control_point_duplicate_sharp),
                      label: "Create Task")
                ]),
            // appBar: AppBar(
            //     backgroundColor: Color.fromARGB(255, 92, 103, 165),
            //     title: const Text(
            //       "Sign In Page",
            //       style: TextStyle(
            //         color: Color.fromARGB(255, 225, 222, 229),
            //         //  backgroundColor: Colors.grey
            //       ),
            //     )),
            body: Container(
              padding: EdgeInsets.all(20),
              child: ListView(children: [
                Container(
                  // margin: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                          child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Search",
                            border: InputBorder.none,
                            fillColor: const Color.fromARGB(255, 250, 249, 249),
                            filled: true,
                            prefixIcon: Icon(
                              Icons.search,
                              size: 30,
                            ),
                            iconColor: Colors.black),
                      )),
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => chat()),
                            );
                          },
                          icon: Icon(Icons.message),
                        ),
                      )
                    ],
                  ),
                ),
                ///////////////////////////////////////////////////////////////////
                Container(
                  height: 15,
                ),
/////////////////////////////////////////////////////////////////////////////
                Container(
                  // padding: EdgeInsets.all(5),
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, mainAxisExtent: 150),
                    itemCount: item.length,
                    itemBuilder: (context, i) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => about()),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(4),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2.0,
                                    color: Color.fromARGB(255, 139, 165, 186),
                                    style: BorderStyle.solid),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              children: [
                                Container(
                                  height: 30,
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                    item[i]["name"],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  height: 5,
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Icon(
                                    item[i]["iconname"],
                                    size: 40,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                CustomListtile(
                  name: "Going to school",
                  sub: "From 7 AM to 2 PM",
                  date: "08:39 AM",
                ),
                CustomListtile(
                  name: "Doing English homework",
                  sub: "From 7 AM to 2 PM",
                  date: "07:30 AM",
                ),
                CustomListtile(
                  name: "Going to school",
                  sub: "From 7 AM to 2 PM",
                  date: "07:00 AM",
                ),
                CustomListtile(
                  name: "Doing English homework",
                  sub: "From 7 AM to 2 PM",
                  date: "06:30 AM",
                ),
                CustomListtile(
                  name: "Going to school",
                  sub: "From 7 AM to 2 PM",
                  date: "06:01 AM",
                ),
                CustomListtile(
                  name: "Doing English homework",
                  sub: "From 7 AM to 2 PM",
                  date: "05:30 AM",
                ),
                CustomListtile(
                  name: "Going to school",
                  sub: "From 7 AM to 2 PM",
                  date: "05:00 AM",
                ),
                CustomListtile(
                  name: "Doing English homework",
                  sub: "From 7 AM to 2 PM",
                  date: "05:00 AM",
                ),
                CustomListtile(
                  name: "Going to school",
                  sub: "From 7 AM to 2 PM",
                  date: "05:00 AM",
                ),
              ]),
            )));
  }
}