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
            child: GridView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 150,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15),
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 167, 191, 211), width: 2),
                      color: Color.fromARGB(255, 251, 248, 248),
                      borderRadius: BorderRadius.circular(20)),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => task()),
                      );
                    },
                    child: Column(
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25)),
                        ),
                        Container(
                          height: 30,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text("All Tasks",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Divider(
                          color: Color.fromARGB(255, 167, 191, 211),
                          thickness: 2,
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 5),
                            child: Icon(
                              Icons.task,
                              size: 40,
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 167, 191, 211), width: 2),
                      color: Color.fromARGB(255, 251, 248, 248),
                      borderRadius: BorderRadius.circular(20)),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text("Favorite",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Divider(
                          color: Color.fromARGB(255, 167, 191, 211),
                          thickness: 2,
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 5),
                            child: Icon(
                              Icons.star,
                              size: 40,
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 167, 191, 211), width: 2),
                      color: Color.fromARGB(255, 251, 248, 248),
                      borderRadius: BorderRadius.circular(20)),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text("Trash",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Divider(
                          color: Color.fromARGB(255, 167, 191, 211),
                          thickness: 2,
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 5),
                            child: Icon(
                              Icons.restore_from_trash,
                              size: 40,
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 167, 191, 211), width: 2),
                      color: Color.fromARGB(255, 251, 248, 248),
                      borderRadius: BorderRadius.circular(20)),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text("Hidden",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Divider(
                          color: Color.fromARGB(255, 167, 191, 211),
                          thickness: 2,
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 5),
                            child: Icon(
                              Icons.remove_red_eye,
                              size: 40,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
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
