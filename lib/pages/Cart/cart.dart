import 'package:ecommerce/model/product.dart';
import 'package:ecommerce/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int message = 1;
  @override
  Widget build(BuildContext context) {
    CartProvider product = Provider.of<CartProvider>(context);
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
      body: product.totalItems == 0
          ? Center(
              child: Image(
              image: NetworkImage(''),
            ))
          : Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
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
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              width: MediaQuery.of(context).size.width,
                              height: 100,
                              // color: Colors.red,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image(
                                    image: NetworkImage(
                                        product.products[index].img),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 150.0,
                                          child: Text(
                                              product.products[index].prodname,
                                              overflow: TextOverflow.visible,
                                              maxLines: 3,
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500)),
                                        ),
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
                                                borderRadius:
                                                    BorderRadius.circular(15),
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
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                          ),
                                        ])
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 8.0, left: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        PopupMenuButton<int>(
                                          itemBuilder: (context) => [
                                            PopupMenuItem(
                                              value: 1,
                                              child: Text("First"),
                                            ),
                                            PopupMenuItem(
                                              value: 2,
                                              child: Text("Delete"),
                                            ),
                                          ],
                                          onSelected: (value) {
                                            if (value == 1) {
                                              setState(() {});
                                            } else if (value == 2) {
                                              product.remove(
                                                  product.products[index]);
                                            }
                                          },
                                        ),
                                        Text(
                                            product.products[index].price
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 14))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: product.products.length,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Item : " + product.totalItems.toString(),
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              product.totalAmount.toString(),
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 50.0, right: 50, top: 12, bottom: 12),
                          child: Text(
                            'CHECK OUT',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        color: Colors.orange,
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
