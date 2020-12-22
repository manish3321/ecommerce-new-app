import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width * 0.85,
          child: TextField(
            cursorColor: Color.fromARGB(10, 2, 8, 4),
            decoration: InputDecoration(
                isDense: true,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                hintText: 'Apple Iphone 11 Pro',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                filled: true,
                fillColor: Colors.grey[300]),
          ),
        ),
        Icon(
          Icons.notifications,
          color: Colors.black,
        )
      ],
    );
  }
}
