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
            selectedItemColor: Colors.orange,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_outlined), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_outlined), label: "")
            ]),
        endDrawer: Drawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey[700]),
          backgroundColor: Colors.grey[300],
          elevation: 0.0,
          // centerTitle: true,
          ////////////////////////////////////////////////////////////////
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shop_2_outlined,
                color: Colors.black,
              ),
              Text(
                " Ecommerce",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                " Aml",
                style: TextStyle(
                    color: Colors.orange, fontWeight: FontWeight.bold),
              )
            ],
          ),
          ///////////////////////////////////////////////////////////////////////
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              margin: const EdgeInsets.symmetric(horizontal: 80),
              child: MaterialButton(
                height: 44,
                onPressed: () {},
                child: Text(
                  "Add To Cart",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.black,
              ),
            ),
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
