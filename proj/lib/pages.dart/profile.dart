import 'package:flutter/material.dart';
import 'package:proj/pages.dart/appointment.dart';
import 'package:proj/pages.dart/dectors.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 238, 243, 246),
        padding: EdgeInsets.only(top: 20),
        child: ListView(
          children: [
            Center(
                child: Text(
              "User Profile",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            )),
            Container(
              padding: EdgeInsets.only(top: 10),
              width: 80,
              height: 80,
              child: Center(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("images/image1 (2).jpg"),
              )),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Center(
                  child: Text(
                "Salma Khaled",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
            ),
            Center(
              child: TextButton(onPressed: () {}, child: Text("Edit Profile")),
            ),
            ////////////////////////////////////////////////////////////////////////
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(18.0))),
                      child: Container(
                        width: 300,
                        height: 260,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'images/image1 (15).jpg',
                              ),
                              Text(
                                "Congratulations",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 4, bottom: 4),
                                child: Text(
                                  "You’ve earned FIRST place ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 62, 123, 173),
                                  ),
                                ),
                              ),
                              Text(
                                "Always look for the best",
                                style:
                                    TextStyle(fontSize: 18, color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: const Color.fromARGB(255, 62, 123, 173))),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Container(
                        child: Expanded(
                            child: ListTile(
                      leading: Icon(
                        Icons.ac_unit_outlined,
                        color: Color.fromARGB(255, 62, 123, 173),
                      ),
                      title: Text(
                        "Rewards",
                        style: TextStyle(fontSize: 19),
                      ),
                      trailing: Icon(Icons.chevron_right_outlined),
                    ))),
                  ],
                ),
              ),
            ),
            ////////////////////////////////////////////////////////////////////////////
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => doctors()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: const Color.fromARGB(255, 62, 123, 173))),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Container(
                        child: Expanded(
                            child: ListTile(
                      leading: Icon(
                        Icons.rate_review_outlined,
                        color: Color.fromARGB(255, 62, 123, 173),
                      ),
                      title: Text(
                        "Review about Doctors",
                        style: TextStyle(fontSize: 19),
                      ),
                      trailing: Icon(Icons.chevron_right_outlined),
                    ))),
                  ],
                ),
              ),
            ),
            ////////////////////////////////////////////////////////////////////////////
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => appointment()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: const Color.fromARGB(255, 62, 123, 173))),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Container(
                        child: Expanded(
                            child: ListTile(
                      leading: Icon(
                        Icons.app_registration_outlined,
                        color: Color.fromARGB(255, 62, 123, 173),
                      ),
                      title: Text(
                        "Book an appointment",
                        style: TextStyle(fontSize: 19),
                      ),
                      trailing: Icon(Icons.chevron_right_outlined),
                    ))),
                  ],
                ),
              ),
            ),
            ////////////////////////////////////////////////////////////////////////////
            InkWell(
              onTap: () {
                print("object");
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: const Color.fromARGB(255, 62, 123, 173))),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Container(
                        child: Expanded(
                            child: ListTile(
                      leading: Icon(
                        Icons.call,
                        color: Color.fromARGB(255, 62, 123, 173),
                      ),
                      title: Text(
                        "Join Meeting with doctor",
                        style: TextStyle(fontSize: 19),
                      ),
                      trailing: Icon(Icons.chevron_right_outlined),
                    ))),
                  ],
                ),
              ),
            ),
            ////////////////////////////////////////////////////////////////////////////
            InkWell(
              onTap: () {
                print("object");
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: const Color.fromARGB(255, 62, 123, 173))),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Container(
                        child: Expanded(
                            child: ListTile(
                      leading: Icon(
                        Icons.analytics_outlined,
                        color: Color.fromARGB(255, 62, 123, 173),
                      ),
                      title: Text(
                        "My Analytics",
                        style: TextStyle(fontSize: 19),
                      ),
                      trailing: Icon(Icons.chevron_right_outlined),
                    ))),
                  ],
                ),
              ),
            ),
            ////////////////////////////////////////////////////////////////////////////
            InkWell(
              onTap: () {
                print("object");
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: const Color.fromARGB(255, 62, 123, 173))),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Container(
                        child: Expanded(
                            child: ListTile(
                      leading: Icon(
                        Icons.table_view_sharp,
                        color: Color.fromARGB(255, 62, 123, 173),
                      ),
                      title: Text(
                        "Tips for dealing with ADHD",
                        style: TextStyle(fontSize: 19),
                      ),
                      trailing: Icon(Icons.chevron_right_outlined),
                    ))),
                  ],
                ),
              ),
            ),
            ////////////////////////////////////////////////////////////////////////////
            InkWell(
              onTap: () {
                print("object");
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: const Color.fromARGB(255, 62, 123, 173))),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Container(
                        child: Expanded(
                            child: ListTile(
                      leading: Icon(
                        Icons.logout_sharp,
                        color: Color.fromARGB(255, 62, 123, 173),
                      ),
                      title: Text(
                        "Log Out",
                        style: TextStyle(fontSize: 19),
                      ),
                      trailing: Icon(Icons.chevron_right_outlined),
                    ))),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
