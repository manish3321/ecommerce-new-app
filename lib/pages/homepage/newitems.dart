import 'package:ecommerce/model/product.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/pages/homepage/itemdetails.dart';

class Newitems extends StatefulWidget {
  @override
  _NewitemsState createState() => _NewitemsState();
}

class _NewitemsState extends State<Newitems> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (3 / 5),
        ),
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          var product = products[index];
          return Container(
              child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ItemDetails(product: products[index])),
              );
            },
            child: Card(
                child: Container(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        child: Image(
                          image: NetworkImage(product.img),
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5, left: 1, bottom: 5, right: 1),
                    child: Text(
                      products[index].prodname,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(product.price.toString(),
                      style: TextStyle(color: Colors.orange[800])),
                  product.oldprice == null
                      ? SizedBox()
                      : Text(
                          product.oldprice.toString(),
                          style:
                              TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                ],
              ),
            )),
          ));
        });
  }
}
