import 'package:flutter/material.dart';

class inputs extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController? controller;
  // final Widget widget;

  const inputs({
    super.key,
    required this.title,
    required this.hint,
    this.controller,
    // required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 53,
            margin: EdgeInsets.only(top: 8),
            padding: EdgeInsets.only(left: 14),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.0),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                Expanded(
                    child: TextFormField(
                  autocorrect: false,
                  cursorColor: Colors.grey,
                  controller: controller,
                  decoration: InputDecoration(
                      hintText: hint,
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Theme.of(context).primaryColorDark!,
                      ))),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
