import 'package:flutter/material.dart';
import 'package:proj/resources/model.dart';
import 'package:proj/resources/title.dart';

class resource extends StatefulWidget {
  const resource({super.key});
  @override
  State<resource> createState() => _resourceState();
}

int index = 0;

List _photos = [
  Data(image: 'images/book1.png', title: 'Math Book - Grade 1'),
  Data(image: 'images/book2.png', title: 'Science Book -Grade 1'),
  Data(image: 'images/image1 (10).jpg', title: 'Arabic Book - Grade 1'),
  Data(image: 'images/image1 (11).jpg', title: 'English Book - Grade 1'),
  Data(image: 'images/6.png', title: 'Math Book - Grade 2'),
  Data(image: 'images/book1.png', title: 'Math Book - Grade 2'),
  Data(image: 'images/image1 (10).jpg', title: 'Arabic Book - Grade 2'),
  Data(image: 'images/image1 (11).jpg', title: 'English Book - Grade 2'),
  Data(image: 'images/book1.png', title: 'Math Book - Grade 3'),
  Data(image: 'images/image1 (10).jpg', title: 'Arabic Book - Grade 3'),
  Data(image: 'images/6.png', title: 'Math Book - Grade 3'),
];

class _resourceState extends State<resource> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                  icon: Icon(Icons.stacked_bar_chart_rounded),
                  label: 'Chat bot'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
            currentIndex: index,
            selectedItemColor: Color.fromARGB(255, 49, 121, 176),
            unselectedItemColor: Colors.grey[800],
            onTap: _changeItem,
          ),
          // appBar: AppBar(title: const Text("create ")),
          body: Container(
            color: Color.fromARGB(255, 238, 243, 246),
            padding: EdgeInsets.all(18),
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, bottom: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Educational Resources",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.book_outlined,
                        size: 30,
                      )
                    ],
                  ),
                ),
                Container(
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 250,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15),
                    itemCount: _photos.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 239, 234, 234),
                            borderRadius: BorderRadius.circular(5)),
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => title()),
                              );
                            },
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 200,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 238, 238, 238),
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image:
                                              AssetImage(_photos[index].image),
                                          fit: BoxFit.cover)),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    child: Text(
                                  _photos[index].title,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )),
                              ],
                            )),
                      );
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }

  void _changeItem(int value) {
    print(value);
    setState(() {
      index = value;
    });
  }
}
