import 'package:flutter/material.dart';
import 'package:proj/chats/chat.dart';
import 'package:proj/home/custom.dart';
import 'package:proj/tasks/task.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
        color: Color.fromRGBO(239, 241, 241, 0.965),
        padding: EdgeInsets.all(20),
        child: ListView(children: [
          Container(
            child: Row(
              children: [
                Container(
                  color: Color.fromRGBO(239, 241, 241, 0.965),
                  width: 310,
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(25)),
                      labelText: "Search  ",
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 13),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => chat()),
                        );
                      },
                      icon: FaIcon(FontAwesomeIcons.comment)),
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
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                        ),
                        Divider(
                          color: Color.fromARGB(255, 167, 191, 211),
                          thickness: 2,
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 5),
                            child: Icon(
                              Icons.task,
                              color: Color.fromARGB(255, 61, 125, 177),
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
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                        ),
                        Divider(
                          color: Color.fromARGB(255, 167, 191, 211),
                          thickness: 2,
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 5),
                            child: Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 234, 180, 21),
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
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17)),
                        ),
                        Divider(
                          color: Color.fromARGB(255, 167, 191, 211),
                          thickness: 2,
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 5),
                            child: Icon(
                              Icons.restore_from_trash,
                              color: Color.fromARGB(255, 61, 125, 177),
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
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17)),
                        ),
                        Divider(
                          color: Color.fromARGB(255, 167, 191, 211),
                          thickness: 2,
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 5),
                            child: FaIcon(
                              FontAwesomeIcons.eyeSlash,
                              color: Color.fromARGB(255, 61, 125, 177),
                              size: 30,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 20,
          ),

          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(176, 202, 205, 100),
                borderRadius: BorderRadius.circular(15)),
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
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(176, 202, 205, 100),
                borderRadius: BorderRadius.circular(15)),
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
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(176, 202, 205, 100),
                borderRadius: BorderRadius.circular(15)),
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
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(176, 202, 205, 100),
                borderRadius: BorderRadius.circular(15)),
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
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(176, 202, 205, 100),
                borderRadius: BorderRadius.circular(15)),
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
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(176, 202, 205, 100),
                borderRadius: BorderRadius.circular(15)),
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
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(176, 202, 205, 100),
                borderRadius: BorderRadius.circular(15)),
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
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(176, 202, 205, 100),
                borderRadius: BorderRadius.circular(15)),
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
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(176, 202, 205, 100),
                borderRadius: BorderRadius.circular(15)),
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
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(176, 202, 205, 100),
                borderRadius: BorderRadius.circular(15)),
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
