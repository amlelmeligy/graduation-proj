import 'package:flutter/material.dart';
import 'package:proj/chats/chat.dart';
import 'package:proj/chats/aboutus.dart';
import 'package:proj/home/custom.dart';
import 'package:proj/pages.dart/bot.dart';
import 'package:proj/pages.dart/profile.dart';
import 'package:proj/resources/resource.dart';
import 'package:proj/tasks/task.dart';

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
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(children: [
          Container(
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
                      MaterialPageRoute(builder: (context) => task()),
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
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          Container(
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              item[i]["name"],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Divider(
                              color: Color.fromARGB(255, 139, 165, 186),
                              thickness: 2),
                          // Container(
                          //   height: 5,
                          // ),
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

          Container(
            child: InkWell(
              onTap: () {},
              child: CustomListtile(
                name: "Going to school",
                sub: "From 7 AM to 2 PM",
                date: "08:39 AM",
              ),
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {},
              child: CustomListtile(
                name: "Doing English homework",
                sub: "From 7 AM to 2 PM",
                date: "08:39 AM",
              ),
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {},
              child: CustomListtile(
                name: "Going to school",
                sub: "From 7 AM to 2 PM",
                date: "08:39 AM",
              ),
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {},
              child: CustomListtile(
                name: "Doing English homework",
                sub: "From 7 AM to 2 PM",
                date: "08:39 AM",
              ),
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {},
              child: CustomListtile(
                name: "Going to school",
                sub: "From 7 AM to 2 PM",
                date: "08:39 AM",
              ),
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {},
              child: CustomListtile(
                name: "Doing English homework",
                sub: "From 7 AM to 2 PM",
                date: "08:39 AM",
              ),
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {},
              child: CustomListtile(
                name: "Going to school",
                sub: "From 7 AM to 2 PM",
                date: "08:39 AM",
              ),
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {},
              child: CustomListtile(
                name: "Doing English homework",
                sub: "From 7 AM to 2 PM",
                date: "08:39 AM",
              ),
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {},
              child: CustomListtile(
                name: "Going to school",
                sub: "From 7 AM to 2 PM",
                date: "08:39 AM",
              ),
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {},
              child: CustomListtile(
                name: "Doing English homework",
                sub: "From 7 AM to 2 PM",
                date: "08:39 AM",
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
