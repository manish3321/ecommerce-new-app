class Product {
  String id;
  String prodname;
  double price;
  double oldprice;
  String img;

  Product({this.id, this.prodname, this.oldprice, this.price, this.img});
}

List<Product> products = [
  Product(
    id: "1",
    prodname: "New - shining jacket 2",
    price: 750,
    oldprice: 960,
    img: "https://m.media-amazon.com/images/I/61fTX5TjAEL._UL1001_.jpg",
  ),
  Product(
    id: "2",
    prodname: "Gaming Desktop Computer AMD Ryzen 7 2700X",
    price: 214000,
    oldprice: 250000,
    img:
        "https://static-01.daraz.com.np/p/0d899f96eb6981036b8135fcc2074c72.jpg",
  ),
  Product(
    id: "3",
    prodname: "TELFAR 8-POCKET CARGO PANTS KHAKI",
    price: 750,
    oldprice: 960,
    img:
        "https://tres-bien.com/media/catalog/product/cache/5710d9a67a6480fbbebbe280e6c5c35d/t/e/telfar_200602_033.jpg",
  ),
];
