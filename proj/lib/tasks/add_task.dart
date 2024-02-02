import 'package:flutter/material.dart';
import 'package:proj/tasks/input_field.dart';

class addTask extends StatefulWidget {
  const addTask({super.key});

  @override
  State<addTask> createState() => _addTaskState();
}

int index = 0;
bool status = true;
bool click_1 = true;
bool click_2 = true;
bool click_3 = true;

class _addTaskState extends State<addTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              icon: Icon(Icons.stacked_bar_chart_rounded), label: 'Chat bot'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: index,
        selectedItemColor: Color.fromARGB(255, 49, 121, 176),
        unselectedItemColor: Colors.grey[800],
        onTap: _changeItem,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              padding: EdgeInsets.only(top: 45),
              child: Center(
                  child: Text(
                "Create New Task",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: input_field(
                title: " Tittle",

                hint: "Enter the Title",
                // widget: null,
              ),
            ),
            input_field(
              title: " Purpose",
              hint: "Enter the Purpose",
              // widget: null,
            ),
            Row(
              children: [
                Expanded(
                    child: input_field(
                  title: "Start Time",
                  hint: "Start",
                )),
                Container(width: 12),
                Expanded(
                    child: input_field(
                  title: "End Time",
                  hint: "End",
                )),
              ],
            ),
            /////////////////////////////////////////////////////////////////////////
            Container(
              padding: EdgeInsets.only(top: 20, left: 8),
              child: Text(
                "Priority",
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Container(
                        height: 52,
                        width: double.infinity,
                        child: Container(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                backgroundColor: click_1
                                    ? Color.fromARGB(255, 235, 233, 233)
                                    : Color.fromARGB(255, 61, 125, 177),
                              ),
                              onPressed: () {
                                setState(() {
                                  click_1 = !click_1;
                                });
                              },
                              child: Text(
                                "Low",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )),
                        ),
                      ),
                    ),
                  ),
                  ////////////

                  ///////////////////////
                  SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Container(
                        height: 52,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              backgroundColor: click_2
                                  ? Color.fromARGB(255, 235, 233, 233)
                                  : Color.fromARGB(255, 61, 125, 177),
                            ),
                            onPressed: () {
                              setState(() {
                                click_2 = !click_2;
                              });
                            },
                            child: Text(
                              "Medium",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              backgroundColor: click_3
                                  ? Color.fromARGB(255, 235, 233, 233)
                                  : Color.fromARGB(255, 61, 125, 177),
                            ),
                            onPressed: () {
                              setState(() {
                                click_3 = !click_3;
                              });
                            },
                            child: Text(
                              "High",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //////////////////////////////////////////////////////////////////
            Container(
              padding: EdgeInsets.only(top: 10),
              child: input_field(
                title: " Description",
                hint: "Enter the Description",
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 20, bottom: 50),
              child: SwitchListTile(
                title: Text(
                  "Reminder",
                  style: TextStyle(fontSize: 22),
                ),
                activeColor: Color.fromARGB(255, 61, 125, 177),
                inactiveThumbColor: Colors.grey,
                value: status,
                onChanged: (value) {
                  setState(() {
                    status = value;
                  });
                },
              ),
            ),
            Center(
              child: Container(
                width: 320,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    backgroundColor: click_2
                        ? Color.fromARGB(255, 61, 125, 177)
                        : Color.fromARGB(255, 61, 125, 177),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Container(
                          margin: EdgeInsets.all(15),
                          child: Container(
                            child: AlertDialog(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 40),
                              title: Center(
                                child: Text(
                                  "Great Job",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              content: Text("Your Task was added Successfully",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey[700])),
                              backgroundColor:
                                  Color.fromARGB(255, 211, 216, 223),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              actions: [
                                Center(
                                  child: Container(
                                    width: 150,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    padding: EdgeInsets.only(bottom: 30),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        backgroundColor: click_2
                                            ? Color.fromARGB(255, 61, 125, 177)
                                            : Color.fromARGB(255, 61, 125, 177),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "Back",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    child: Text(
                      "Create Task",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  // color: Color.fromARGB(255, 61, 125, 177),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }

  void _changeItem(int value) {
    print(value);
    setState(() {
      index = value;
    });
  }
}
