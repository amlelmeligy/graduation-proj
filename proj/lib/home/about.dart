import 'package:flutter/material.dart';
import 'package:proj/home/Home.dart';

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        endDrawer: Drawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey[700]),
          backgroundColor: Colors.grey[300],
          elevation: 0.0,
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Container(
                        margin: EdgeInsets.all(50),
                        child: AlertDialog(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 40, horizontal: 20),
                          icon: Icon(
                            Icons.telegram_outlined,
                            size: 100,
                          ),
                          title: Text("Congratulations!"),
                          content: Text(
                              "your passward reset successfully , you will be directed to login screen",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: const Color.fromARGB(
                                      255, 128, 126, 126))),
                          // actions: [
                          //   ElevatedButton(onPressed: () {}, child: Text('ok')),
                          //   ElevatedButton(onPressed: () {}, child: Text('no'))
                          // ],
                          backgroundColor: Color.fromARGB(255, 175, 195, 223),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                        ),
                      );
                    },
                  );
                },
                color: Colors.red,
                child: Text(
                  "press",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ));
  }
}
