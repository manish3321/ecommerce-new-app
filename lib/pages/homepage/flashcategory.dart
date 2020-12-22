import 'package:flutter/material.dart';

class FlashCategory extends StatefulWidget {
  @override
  _FlashCategoryState createState() => _FlashCategoryState();
}

class _FlashCategoryState extends State<FlashCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 150,
      width: MediaQuery.of(context).size.width * 0.92,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://is4-ssl.mzstatic.com/image/thumb/Purple124/v4/c9/c9/17/c9c91706-3696-190b-eab0-099b264349f6/source/256x256bb.jpg"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("New Machines",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.orange,
                              fontWeight: FontWeight.w500,
                            )),
                        Text("The lowest price",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            )),
                      ],
                    )
                  ],
                ),
                Container(
                    height: 50, child: VerticalDivider(color: Colors.grey)),
                Row(
                  children: [
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://res-1.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco/uieqjew9amfsaytpwr0f"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Consignments",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.orange,
                              fontWeight: FontWeight.w500,
                            )),
                        Text("Category richness",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            )),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider()
        ],
      ),
    );
  }
}
