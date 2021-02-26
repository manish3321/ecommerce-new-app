import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int message = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          "Cart",
        ),
        actions: <Widget>[
          Icon(Icons.search),
        ],
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 8.0,
                top: 0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                width: MediaQuery.of(context).size.width,
                height: 100,
                // color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://m.media-amazon.com/images/I/61fTX5TjAEL._UL1001_.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('New Jacket front face',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400)),
                          Text(
                            'Jacket, color:red',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Row(children: [
                            InkWell(
                              onTap: () {
                                message--;
                                setState(() {});
                                if (message <= 1) {
                                  message = 1;
                                }
                              },
                              child: Container(
                                width: 25,
                                height: 25,
                                child: Center(
                                  child: Text(
                                    '-',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              message.toString(),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {});
                                message++;
                              },
                              child: Container(
                                width: 25,
                                height: 25,
                                child: Center(
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ])
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PopupMenuButton<int>(
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                value: 1,
                                child: Text("First"),
                              ),
                              PopupMenuItem(
                                value: 2,
                                child: Text("Second"),
                              ),
                            ],
                            onSelected: (value) {
                              if (value == 1) {
                                setState(() {});
                              } else if (value == 2) {}
                            },
                          ),
                          Text('Rs.850',
                              style: TextStyle(color: Colors.red, fontSize: 14))
                        ],
                      ),
                    ),
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
