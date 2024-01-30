import 'package:flutter/material.dart';
import 'package:proj/about.dart';
import 'package:proj/custom.dart';

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
                selectedItemColor: Colors.orange,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined), label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_bag_outlined), label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_2_outlined), label: "")
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
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.message,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                ///////////////////////////////////////////////////////////////////
                Container(
                  height: 20,
                ),
/////////////////////////////////////////////////////////////////////////////
                Container(
                  padding: EdgeInsets.all(5),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(500)),
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, mainAxisExtent: 150),
                    itemCount: item.length,
                    itemBuilder: (context, i) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => about(data: item[i])));
                        },
                        child: Card(
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                  item[i]["name"],
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
