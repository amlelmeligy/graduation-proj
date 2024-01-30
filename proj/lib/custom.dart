import 'package:flutter/material.dart';

class CustomListtile extends StatelessWidget {
  final String name;
  final String sub;
  final String date;

  // final image;
  const CustomListtile({
    super.key,
    required this.name,
    required this.sub,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
                child: ListTile(
              title: Text(
                "$name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
              subtitle: Text(
                "$sub",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Text("$date"),
            )),
          ],
        ));
  }
}
