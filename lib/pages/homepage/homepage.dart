import 'package:ecommerce/pages/homepage/flashcategory.dart';
import 'package:ecommerce/pages/homepage/homecategory.dart';
import 'package:ecommerce/pages/homepage/newitems.dart';
import 'package:ecommerce/provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    CartProvider product = Provider.of<CartProvider>(context);
    return SafeArea(
      child: Scaffold(
        // -----------------AppBar----------//
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            Row(
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
            ),
          ],
        ),

        //-----------End appBar---------------//

        backgroundColor: Colors.grey[100],

        //-------bodypart-------------//
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.98,
                  height: 150,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        color: Colors.grey,
                        blurRadius: 5,
                      )
                    ]),
                    child: Carousel(
                      borderRadius: true,
                      boxFit: BoxFit.cover,
                      dotPosition: DotPosition.bottomLeft,
                      dotSize: 3,
                      dotSpacing: 15,
                      dotBgColor: Colors.transparent,
                      dotColor: Colors.lightGreenAccent,
                      moveIndicatorFromBottom: 10,
                      images: [
                        NetworkImage(
                          "https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2018/10/amazon-sale-1475469755367-1539062372.jpeg",
                        ),
                        NetworkImage(
                            "https://techsathi.com/wp-content/uploads/2020/11/banner-1024x538.jpg"),
                        NetworkImage(
                            "https://www.ecommerceceo.com/wp-content/uploads/2020/01/Ecommerce-Business-Ideas-2020.jpg"),
                      ],
                    ),
                  ),
                ),
              ),

              //-----------------End of carousel ------------------//

              //---------start of category ----------------------//
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HomeCategory(
                          name: "Phones",
                          image:
                              "https://cnet1.cbsistatic.com/img/ZB6Ru2AyklxX0_AV9mTAYHXshBU=/940x528/2020/10/20/374ca0b7-965f-4586-a2c7-d58051f9e0bc/p1002406.jpg"),
                      HomeCategory(
                          name: "Dress",
                          image:
                              "https://media.thereformation.com/image/upload/q_auto:eco/c_scale,w_auto:breakpoints_100_2560_9_20:824/v1/prod/product_images/winslow-dress/navy/5c3cf396f35be23e8da597c0/original.jpg"),
                      HomeCategory(
                          name: "Recharge",
                          image:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSg4EZ251QSHn6TK0_IXw-_0EanxNeB-UH9w&usqp=CAU"),
                      HomeCategory(
                          name: "Vouchers",
                          image:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQboNWCay-RvJNpv6Qqz-Jxbv_MOGCFlcyHQw&usqp=CAU"),
                      HomeCategory(
                          name: "Help center",
                          image:
                              "https://cdn.iconscout.com/icon/free/png-256/online-help-supprt-team-call-center-2-5228.png"),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HomeCategory(
                          name: "Categories",
                          image:
                              "https://cdn0.iconfinder.com/data/icons/mobile-device/512/list-listing-order-blue-round-2-512.png"),
                      HomeCategory(
                          name: "Reviews",
                          image:
                              "https://cdn2.mageplaza.com/media/shopify_appicons//a8f35d011cf83221b2ad1f280ff8d236.png"),
                      HomeCategory(
                          name: "Dmart",
                          image:
                              "https://d13genyhhfmqry.cloudfront.net/widget/mp_3291792_2019-04-23-15-11-56-000449.jpg"),
                      HomeCategory(
                          name: "Hot Sales",
                          image:
                              "https://cdn2.mageplaza.com/media/shopify_appicons//b4f0705d8e66402bd5ea27fb5b26db50.png"),
                      HomeCategory(
                          name: "Phones",
                          image:
                              "https://cdn-img.prettylittlething.com/d/8/4/e/d84e609962c532e472cc8f460b28d5640869a12c_CLU4305_3.JPG"),
                    ],
                  ),
                ],
              ),

              //-------end of category row-----------------//
              SizedBox(
                height: 15,
              ),
              FlashCategory(),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                child: Row(
                  children: [
                    Text(
                      "Just for you",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Newitems(),
            ],
          ),
        )),
      ),
    );
  }
}
