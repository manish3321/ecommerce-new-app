import 'package:ecommerce/model/product.dart';
import 'package:flutter/material.dart';

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
          return Container(
              child: Card(
                  child: Container(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 120,
                      child: Image(
                        image: NetworkImage(products[index].img),
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
                ListTile(
                  title: Text(products[index].price.toString(),
                      style: TextStyle(color: Colors.orange[800])),
                  subtitle: Text(
                    products[index].oldprice.toString(),
                    style: TextStyle(decoration: TextDecoration.lineThrough),
                  ),
                )
              ],
            ),
          )));
        });
  }
}
