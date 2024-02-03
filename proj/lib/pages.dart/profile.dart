import 'package:flutter/material.dart';

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
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Container(
                      margin: EdgeInsets.all(15),
                      child: Container(
                        child: AlertDialog(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          title: Text(
                            "Congratulations",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          content: Text(
                              "You’ve earned Second place"
                              "Always look for the best",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 0, 0, 0))),
                          backgroundColor: Color.fromARGB(255, 211, 216, 223),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
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
