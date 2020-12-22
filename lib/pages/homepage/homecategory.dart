import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget {
  final String name;
  final String image;
  HomeCategory({this.image, this.name});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width * 0.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(1, 5),
                        blurRadius: 5,
                        color: Colors.white24,
                      )
                    ],
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: NetworkImage(image), fit: BoxFit.cover))),
            SizedBox(
              height: 5,
            ),
            Text(
              name,
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
