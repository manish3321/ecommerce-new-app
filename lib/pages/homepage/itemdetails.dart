import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommerce/model/product.dart';
import 'package:ecommerce/pages/Cart/cart.dart';
import 'package:ecommerce/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ItemDetails extends StatefulWidget {
  final Product product;
  ItemDetails({this.product});

  @override
  _ItemDetailsState createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  int message = 1;
  @override
  Widget build(BuildContext context) {
    CartProvider product = Provider.of<CartProvider>(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                overflow: Overflow.clip,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 1),
                          color: Colors.white,
                          blurRadius: 5,
                        )
                      ]),
                      child: Carousel(
                        borderRadius: true,
                        boxFit: BoxFit.contain,
                        dotPosition: DotPosition.bottomCenter,
                        dotSize: 3,
                        dotSpacing: 15,
                        dotBgColor: Colors.transparent,
                        dotColor: Colors.lightGreenAccent,
                        images: [
                          NetworkImage(widget.product.img),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.orange[900].withOpacity(0.5)),
                        height: 30,
                        width: 30,
                        child: Icon(
                          Icons.clear,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.orange[900].withOpacity(0.5)),
                      height: 30,
                      width: 30,
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 50,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CartScreen()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.orange[900].withOpacity(0.5)),
                        height: 30,
                        width: 30,
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 45,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black),
                      height: 15,
                      width: 15,
                      child: Center(
                          child: Text(
                        product.totalItems.toString(),
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      )),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.product.prodname ?? '',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  widget.product.price.toString() ?? '',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.orange[800],
                    fontSize: 15,
                  ),
                ),
              ),
              widget.product.oldprice == null
                  ? SizedBox()
                  : Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        widget.product.oldprice.toString() ?? '',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.orange[800],
                          fontSize: 10,
                        ),
                      ),
                    ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Expanded(
                  child: Text(
                    widget.product.description ?? '',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange[500],
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange[500],
                      size: 15,
                    ),
                    Icon(Icons.star, color: Colors.orange[500], size: 15),
                    Icon(Icons.star, color: Colors.black, size: 15),
                    Icon(Icons.star, color: Colors.black, size: 15),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '(12 Review)',
                      style: TextStyle(color: Colors.black, fontSize: 11),
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(
                    left: 12.0, top: 8, right: 8, bottom: 8),
                child: Row(
                  children: [
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
                    SizedBox(
                      width: 30,
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.0),
                          side: BorderSide(color: Colors.red)),
                      color: Colors.orange[800],
                      onPressed: () {
                        product.add(widget.product);
                        Fluttertoast.showToast(
                            msg:
                                "          Succesfully added to cart          ",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.black,
                            textColor: Colors.white,
                            fontSize: 12.0);
                      },
                      child: Center(
                          child: Text(
                        'Add to cart',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
